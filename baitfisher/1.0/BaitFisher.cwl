class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/BaitFisher.cwl
inputs:
- id: parameter_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gff_file_test
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- BaitFisher
