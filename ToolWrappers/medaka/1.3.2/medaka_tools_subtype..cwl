class: CommandLineTool
id: medaka_tools_subtype..cwl
inputs:
- id: in_medaka
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_tools
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/medaka:1.3.2--py38h130def0_0
cwlVersion: v1.1
baseCommand:
- medaka
- tools
- subtype.
