class: CommandLineTool
id: crux_make_pin_decoy_..cwl
inputs:
- id: in_crux
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_make_pin
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_target_input
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- crux
- make-pin
- decoy_.
