class: CommandLineTool
id: ../../../pancake_create.cwl
inputs:
- id: sequences
  doc: fasta or multiple fasta file providing input chromosome sequences
  type: string[]
  inputBinding:
    prefix: --sequences
- id: ids
  doc: gi ids of sequences to download from NCBI
  type: string[]
  inputBinding:
    prefix: --ids
- id: email
  doc: if downloading your sequences via gi ids, please specify your email address;
    in case of excessive usage, NCBI will attempt to contact a user at the e-mail
    address provided prior to blocking access to the E-utilities
  type: string
  inputBinding:
    prefix: --email
- id: pan_file
  doc: File name of new PanCake Object (DEFAULT=pan_files/pancake.pan)
  type: string
  inputBinding:
    prefix: --pan_file
- id: ali
  doc: '[ALI [ALI ...]], -a [ALI [ALI ...]] pairwise alignments (BLAST or nucmer output)
    to include in PanCake Object'
  type: boolean
  inputBinding:
    prefix: --ali
- id: min_len
  doc: minimum length of pairwise alignments to include (DEFUALT=25)
  type: long
  inputBinding:
    prefix: --min_len
- id: no_self_alignments
  doc: if set, skip pairwise alignments between regions on identical chromosomes as
    input (DEFAULT=False)
  type: boolean
  inputBinding:
    prefix: --no_self_alignments
outputs: []
cwlVersion: v1.1
baseCommand:
- pancake
- create
