class: CommandLineTool
id: ../../../bedSort.cwl
inputs:
- id: in_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bedSort
