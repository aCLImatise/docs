class: CommandLineTool
id: mcx.cwl
inputs:
- id: in_mode
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mcx
