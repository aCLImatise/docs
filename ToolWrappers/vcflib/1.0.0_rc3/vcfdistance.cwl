class: CommandLineTool
id: vcfdistance.cwl
inputs:
- id: in_custom_tag_name
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
- vcfdistance
