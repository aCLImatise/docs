class: CommandLineTool
id: validate_blat_parallel_local.cwl
inputs:
- id: in_num_threads
  doc: (=8)             number of threads
  type: long
  inputBinding:
    prefix: --num_threads
- id: in_min_contig
  doc: (=100)            minimum contigs
  type: long
  inputBinding:
    prefix: --min_contig
- id: in_is_local
  doc: local align
  type: boolean
  inputBinding:
    prefix: --is_local
- id: in_parallel_blat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_validate_contigs_blat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_contigs_dot_fa_dot
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_query_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- validate_blat_parallel_local
