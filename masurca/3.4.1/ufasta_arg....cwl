class: CommandLineTool
id: ../../../ufasta_arg....cwl
inputs:
- id: u_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: cmd
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: arg_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- ufasta
- arg...
