class: CommandLineTool
id: gmap_process.cwl
inputs:
- id: in_more_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -OPTIONS
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gmap:2020.10.14--pl526h2f06484_0
cwlVersion: v1.1
baseCommand:
- gmap_process
