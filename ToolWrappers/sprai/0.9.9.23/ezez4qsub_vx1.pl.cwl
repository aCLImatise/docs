class: CommandLineTool
id: ezez4qsub_vx1.pl.cwl
inputs:
- id: in_this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ec_dot_spec
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_as_mdot_spec
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
- ezez4qsub_vx1.pl
