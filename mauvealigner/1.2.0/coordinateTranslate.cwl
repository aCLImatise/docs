class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/coordinateTranslate.cwl
inputs:
- id: x_mfa_alignment
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: alignment_coordinate_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- coordinateTranslate
