class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/validate_contigs_blat.cwl
inputs:
- id: min_contig
  doc: (=100)            minimum contigs
  type: string
  inputBinding:
    prefix: --min_contig
- id: similar
  doc: (=0.95)              similarity
  type: string
  inputBinding:
    prefix: --similar
- id: complete_rate
  doc: (=0.8)         completeness
  type: string
  inputBinding:
    prefix: --complete_rate
- id: is_local
  doc: local align
  type: boolean
  inputBinding:
    prefix: --is_local
- id: ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: contigs_dot_fa_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- validate_contigs_blat
