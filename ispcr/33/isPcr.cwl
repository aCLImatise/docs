class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/isPcr.cwl
inputs:
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: query
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- isPcr
