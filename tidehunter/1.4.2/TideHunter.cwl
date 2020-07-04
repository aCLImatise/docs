class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/TideHunter.cwl
inputs:
- id: km_er_length
  doc: k-mer length (no larger than 16). [8]
  type: long
  inputBinding:
    prefix: --kmer-length
- id: window_size
  doc: window size. [1]
  type: long
  inputBinding:
    prefix: --window-size
- id: step_size
  doc: INT    step size. [1]
  type: boolean
  inputBinding:
    prefix: --step-size
- id: hpc_km_er
  doc: use homopolymer-compressed k-mer. [False]
  type: boolean
  inputBinding:
    prefix: --HPC-kmer
- id: min_copy
  doc: INT    minimum copy number of tandem repeat. [2]
  type: boolean
  inputBinding:
    prefix: --min-copy
- id: max_diver_g
  doc: INT    maximum allowed divergence rate between two consecutive repeats. [0.25]
  type: boolean
  inputBinding:
    prefix: --max-diverg
- id: min_period
  doc: INT    minimum period size of tandem repeat. (>=2) [30]
  type: boolean
  inputBinding:
    prefix: --min-period
- id: max_period
  doc: INT    maximum period size of tandem repeat. (<=4294967295) [10K]
  type: boolean
  inputBinding:
    prefix: --max-period
- id: match
  doc: INT       match score [2]
  type: boolean
  inputBinding:
    prefix: --match
- id: mismatch
  doc: mismatch penalty [4]
  type: long
  inputBinding:
    prefix: --mismatch
- id: gap_open
  doc: (,INT) gap opening penalty (O1,O2) [4,24]
  type: long
  inputBinding:
    prefix: --gap-open
- id: gap_ext
  doc: 'INT(,INT) gap extension penalty (E1,E2) [2,1] TideHunter provides three gap
    penalty modes, cost of a g-long gap: - convex (default): min{O1+g*E1, O2+g*E2}
    - affine (set O2 as 0): O1+g*E1 - linear (set O1 as 0): g*E1'
  type: boolean
  inputBinding:
    prefix: --gap-ext
- id: five_prime
  doc: STR    5' adapter sequence (sense strand). [NULL]
  type: boolean
  inputBinding:
    prefix: --five-prime
- id: three_prime
  doc: 3' adapter sequence (anti-sense strand). [NULL]
  type: string
  inputBinding:
    prefix: --three-prime
- id: ada_mat_rat
  doc: minimum match ratio of adapter sequence. [0.80]
  type: string
  inputBinding:
    prefix: --ada-mat-rat
- id: output
  doc: STR    output file. [stdout]
  type: boolean
  inputBinding:
    prefix: --output
- id: unit_seq
  doc: only output the unit sequences of each tandem repeat, no consensus sequence.
    [False]
  type: boolean
  inputBinding:
    prefix: --unit-seq
- id: longest
  doc: only output the consensus sequence of the tandem repeat that covers the longest
    read sequence. [False]
  type: boolean
  inputBinding:
    prefix: --longest
- id: full_len
  doc: only output full-length consensus sequence. [False]
  type: boolean
  inputBinding:
    prefix: --full-len
- id: out_fmt
  doc: 'INT    output format. [1] - 1: FASTA - 2: Tabular'
  type: boolean
  inputBinding:
    prefix: --out-fmt
- id: thread
  doc: INT    number of threads to use. [4]
  type: boolean
  inputBinding:
    prefix: --thread
- id: in_dot_f_a_slash_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- TideHunter
