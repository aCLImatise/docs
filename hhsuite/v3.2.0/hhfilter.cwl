class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hhfilter.cwl
inputs:
- id: read_input_file
  doc: 'read input file in A3M/A2M or FASTA format                 '
  type: File
  inputBinding:
    prefix: -i
- id: write_output_file
  doc: 'write to output file in A3M format                         '
  type: File
  inputBinding:
    prefix: -o
- id: append_output_file
  doc: 'append to output file in A3M format                        '
  type: File
  inputBinding:
    prefix: -a
- id: verbose_mode_screen
  doc: 'verbose mode: 0:no screen output  1:only warings  2: verbose'
  type: long
  inputBinding:
    prefix: -v
- id: id
  doc: '[0,100]  maximum pairwise sequence identity (%) (def=90)   '
  type: boolean
  inputBinding:
    prefix: -id
- id: diff
  doc: '[0,inf[  filter MSA by selecting most diverse set of sequences, keeping  at
    least this many seqs in each MSA block of length 50 (def=0) '
  type: boolean
  inputBinding:
    prefix: -diff
- id: cov
  doc: '[0,100]  minimum coverage with query (%) (def=0) '
  type: boolean
  inputBinding:
    prefix: -cov
- id: qid
  doc: '[0,100]  minimum sequence identity with query (%) (def=0) '
  type: boolean
  inputBinding:
    prefix: -qid
- id: qsc
  doc: '[0,100]  minimum score per column with query  (def=-20.0)'
  type: boolean
  inputBinding:
    prefix: -qsc
- id: neff
  doc: '[1,inf]  target diversity of alignment (default=off)'
  type: boolean
  inputBinding:
    prefix: -neff
- id: max_seq
  doc: max number of input rows (def=65535)
  type: long
  inputBinding:
    prefix: -maxseq
- id: max_res
  doc: max number of HMM columns (def=20001)
  type: long
  inputBinding:
    prefix: -maxres
outputs: []
cwlVersion: v1.1
baseCommand:
- hhfilter
