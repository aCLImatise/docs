class: CommandLineTool
id: run_DAG_chainer.pl.cwl
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
  dockerPull: quay.io/biocontainers/dagchainer:r120920--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- run_DAG_chainer.pl
