class: CommandLineTool
id: augur_measurements..cwl
inputs:
- id: in_augur
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- augur
- measurements.
