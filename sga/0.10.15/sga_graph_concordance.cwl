class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sga_graph_concordance.cwl
inputs:
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: reference
  doc: load the reference genome from FILE
  type: string
  inputBinding:
    prefix: --reference
- id: threads
  doc: 'use NUM threads to compute the overlaps (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: germline
  doc: load germline variants from FILE
  type: File
  inputBinding:
    prefix: --germline
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- sga
- graph-concordance
