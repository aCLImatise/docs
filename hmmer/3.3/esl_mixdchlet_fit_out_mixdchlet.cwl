class: CommandLineTool
id: ../../../esl_mixdchlet_fit_out_mixdchlet.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: esl_mix_dch_let
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fit
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: q
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: k
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_count_file
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: out_mix_dch_let
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-mixdchlet
- fit
- out_mixdchlet
