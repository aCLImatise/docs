class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/drawmodel.cwl
inputs:
- id: mod
  doc: '[n]      Draw first or nth model'
  type: boolean
  inputBinding:
    prefix: -mod
- id: reg
  doc: '[n]      Draw first or nth regularizer'
  type: boolean
  inputBinding:
    prefix: -reg
- id: freq
  doc: '[n]      Draw first or nth frequencies'
  type: boolean
  inputBinding:
    prefix: -freq
- id: model_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: psfile
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- drawmodel
