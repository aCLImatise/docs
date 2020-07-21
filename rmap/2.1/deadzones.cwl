class: CommandLineTool
id: ../../../deadzones.cwl
inputs:
- id: output
  doc: 'Name of output file (default: stdout) '
  type: boolean
  inputBinding:
    prefix: -output
- id: km_er
  doc: 'Width of k-mers '
  type: boolean
  inputBinding:
    prefix: -kmer
- id: prefix
  doc: 'prefix length '
  type: boolean
  inputBinding:
    prefix: -prefix
- id: bisulfite
  doc: 'get bisulfite deadzones '
  type: boolean
  inputBinding:
    prefix: -bisulfite
- id: ag_wild
  doc: 'A/G wildcard for bisulfite '
  type: boolean
  inputBinding:
    prefix: -ag-wild
- id: suffix
  doc: 'suffix of FASTA files (assumes -c indicates dir) '
  type: boolean
  inputBinding:
    prefix: -suffix
- id: verbose
  doc: 'print more run information '
  type: boolean
  inputBinding:
    prefix: -verbose
- id: about
  doc: 'print about message '
  type: boolean
  inputBinding:
    prefix: -about
- id: one_or_more_fast_a_chrom_files
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- deadzones
