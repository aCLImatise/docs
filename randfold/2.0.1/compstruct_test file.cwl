class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/compstruct_test file.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: comp_struct
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: trusted_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: test_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- compstruct
- test file
