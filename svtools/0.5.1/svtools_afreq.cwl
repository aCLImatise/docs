class: CommandLineTool
id: ../../../svtools_afreq.cwl
inputs:
- id: support
  doc: ''
  type: boolean
  inputBinding:
    prefix: --support
- id: var_1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_2
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- svtools
- afreq
