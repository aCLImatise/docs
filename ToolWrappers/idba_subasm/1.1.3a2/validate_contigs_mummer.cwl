class: CommandLineTool
id: validate_contigs_mummer.cwl
inputs:
- id: in_min_contig
  doc: (=100)            minimum contigs
  type: long?
  inputBinding:
    prefix: --min_contig
- id: in_similar
  doc: (=0.95)              similarity
  type: double?
  inputBinding:
    prefix: --similar
- id: in_ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_contigs_dot_fa_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- validate_contigs_mummer
