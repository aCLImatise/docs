class: CommandLineTool
id: txt2ftbl_FLUX_NAME.cwl
inputs:
- id: in_txttwoftbldotpy
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- txt2ftbl
- FLUX_NAME
