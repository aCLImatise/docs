class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/compare.cwl
inputs:
- id: col
  doc: ''
  type: boolean
  inputBinding:
    prefix: -col
- id: core
  doc: ''
  type: boolean
  inputBinding:
    prefix: -core
- id: caps
  doc: ''
  type: boolean
  inputBinding:
    prefix: -caps
- id: an_not
  doc: ''
  type: File
  inputBinding:
    prefix: -annot
- id: score
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: test_alignment
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: reference_alignment
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: bali_base_an_not_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- compare
