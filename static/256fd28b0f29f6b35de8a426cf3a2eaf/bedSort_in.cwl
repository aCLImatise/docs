class: CommandLineTool
id: bedSort_in.bed.cwl
inputs:
- id: out_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bedSort
- in.bed
