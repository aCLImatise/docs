import React, { useState, useEffect } from "react"
import { graphql } from "gatsby"
import Container from "react-bulma-components/lib/components/container"
import Section from "react-bulma-components/lib/components/section"
import Table from "react-bulma-components/lib/components/table"
import Card from "react-bulma-components/lib/components/card"
import Heading from "react-bulma-components/lib/components/heading"
import List from "react-bulma-components/lib/components/list"
import axios from "axios"
import { dark } from 'react-syntax-highlighter/dist/esm/styles/prism';
import { Prism as SyntaxHighlighter } from 'react-syntax-highlighter';

const useAxios = (config) => {
  const [data, updateData] = useState(undefined)

  // empty array as second argument equivalent to componentDidMount
  useEffect(() => {
    async function fetchData() {
      const response = await axios.get(config)
      updateData(response.data)
    }

    fetchData()
  }, [config])

  return data
}

export const query = graphql`
    query executable($id: String) {
        condaExecutable(id: {eq: $id}) {
            name
            parent {
                ...on CondaVersion {
                    name
                    publicURL
                    parent {
                        ...on CondaPackage {
                            name
                            publicURL
                        }
                    }
                }
            }
			children {
				...on File {
					id
					relativePath
					publicURL
				}
			}
            wrappers {
				id
				relativePath
				publicURL
            }
        }
    }
`

function Wrapper({ file }) {
  const data = useAxios({ url: file.publicURL, method: "get", responseType: "text" });
  return (
    <Card>
      <Card.Image>
        <SyntaxHighlighter>
          {data}
        </SyntaxHighlighter>
      </Card.Image>
    </Card>
  )
}

export default function Executable({ data }) {
  const exe = data.condaExecutable
  const version = exe.parent
  const pack = exe.parent.parent
  return (
    <Section>
      <Container>
        <Heading level={2}>{`${pack.name} ${version.name} ${exe.name}`}</Heading>
        <Heading level={3}>Wrappers</Heading>
        {exe.wrappers.map(wrapper => {
          return <Wrapper file={wrapper}/>
        })}
      </Container>
    </Section>
  )
}
