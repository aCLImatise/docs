class: CommandLineTool
id: DB2quiva.cwl
inputs:
- id: in_vu
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -vU
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- DB2quiva
