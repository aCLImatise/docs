class: CommandLineTool
id: mkpat.cwl
inputs:
- id: in_xsize
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ysize
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
- mkpat
