class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/crux_q_ranker.cwl
inputs:
- id: fragmentation_spectra
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: search_results
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- q-ranker
