class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ct_energy.cwl
inputs:
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- ct-energy
