class: CommandLineTool
id: fastaptamer_search.cwl
inputs:
- id: in_p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: File
  inputBinding:
    prefix: -i
- id: in_as_lashtslashgslashcslashu
  doc: single bases
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastaptamer_search
