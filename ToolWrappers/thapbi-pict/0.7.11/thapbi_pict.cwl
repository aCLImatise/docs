class: CommandLineTool
id: thapbi_pict.cwl
inputs:
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/thapbi-pict:0.7.11--py_0
cwlVersion: v1.1
baseCommand:
- thapbi_pict
