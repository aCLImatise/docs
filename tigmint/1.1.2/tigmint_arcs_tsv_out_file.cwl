class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tigmint_arcs_tsv_out_file.cwl
inputs:
- id: tig_mint_arcs_tsv
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: graph_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- tigmint-arcs-tsv
- out_file
