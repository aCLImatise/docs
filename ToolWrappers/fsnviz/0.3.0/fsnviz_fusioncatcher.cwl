class: CommandLineTool
id: fsnviz_fusioncatcher.cwl
inputs:
- id: in_input
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
- fsnviz
- fusioncatcher
