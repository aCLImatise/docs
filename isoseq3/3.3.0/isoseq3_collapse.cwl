class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/isoseq3_collapse.cwl
inputs:
- id: min_aln_coverage
  doc: FLOAT  Ignore alignments with less than minimum query read coverage. [0.99]
  type: boolean
  inputBinding:
    prefix: --min-aln-coverage
- id: min_aln_identity
  doc: FLOAT  Ignore alignments with less than minimum alignment identity. [0.95]
  type: boolean
  inputBinding:
    prefix: --min-aln-identity
- id: max_fuzzy_junction
  doc: INT    Ignore mismatches or indels shorter than or equal to N. [5]
  type: boolean
  inputBinding:
    prefix: --max-fuzzy-junction
- id: num_threads
  doc: INT    Number of threads to use, 0 means autodetection. [0]
  type: boolean
  inputBinding:
    prefix: --num-threads
- id: log_level
  doc: 'STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]'
  type: boolean
  inputBinding:
    prefix: --log-level
- id: log_file
  doc: FILE   Log to a file, instead of stderr.
  type: boolean
  inputBinding:
    prefix: --log-file
- id: out_dot_fast_q
  doc: STR    Collapsed transcripts in FASTQ
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- isoseq3
- collapse
