import { Link } from "gatsby"

import Layout from "../components/layout"
import Image from "../components/image"
import SEO from "../components/seo"

import React from 'react';
import Container from 'react-bulma-components/lib/components/container';
import Heading from 'react-bulma-components/lib/components/heading';
import Section from 'react-bulma-components/lib/components/section';
import Content from 'react-bulma-components/lib/components/content';

const IndexPage = () => (
  <Layout>
      <SEO title={'BaseCamp'} description={'Repository of packages generated by aCLImatise'}/>
      <Section>
        <Container>
            <Content>
                <p>Welcome to BaseCamp, a repository of bioinformatics tool definitions generated by aCLImatise.</p>
                <p>Start by browsing the available <Link to='packages'>Packages</Link></p>
            </Content>
        </Container>
    </Section>
  </Layout>
)

export default IndexPage
