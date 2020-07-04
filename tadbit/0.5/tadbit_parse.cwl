class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tadbit_parse.cwl
inputs:
- id: workdir
  doc: path to working directory (generated with the tool tadbit mapper)
  type: File
  inputBinding:
    prefix: --workdir
- id: type
  doc: '[map]file type to be parser, MAP (GEM-mapper), SAM or BAM'
  type: string
  inputBinding:
    prefix: --type
- id: read
  doc: In case only one of the reads needs to be parsed
  type: long
  inputBinding:
    prefix: --read
- id: filter_chrom
  doc: 'default: --filter_chrom "^(chr)?[A-Za-z]?[0-9]{0,3}[XVI]{0,3}(?:ito)?[A-Z-a-z]?(_dna)?$",
    regexp to consider only chromosome names passing'
  type: string
  inputBinding:
    prefix: --filter_chrom
- id: skip
  doc: '[DEBUG] in case already mapped.'
  type: boolean
  inputBinding:
    prefix: --skip
- id: compress_input
  doc: Compress input mapped files when parsing is done. This is done in background,
    while next MAP file is processed, or while reads are sorted.
  type: boolean
  inputBinding:
    prefix: --compress_input
- id: tmp_db
  doc: if provided uses this directory to manipulate the database
  type: File
  inputBinding:
    prefix: --tmpdb
- id: genome
  doc: 'paths to file(s) with FASTA files of the reference genome. If many, files
    will be concatenated. I.e.: --genome chr_1.fa chr_2.fa In this last case, order
    is important or the rest of the analysis. Note: it can also be the path to a previously
    parsed genome in pickle format.'
  type: File[]
  inputBinding:
    prefix: --genome
- id: job_ids
  doc: Use as input data generated by a job with a given jobid(s). Use tadbit describe
    to find out which. In this case one jobid can be passed per read.
  type: long[]
  inputBinding:
    prefix: --jobids
- id: nox
  doc: no display server (X screen)
  type: boolean
  inputBinding:
    prefix: --noX
outputs: []
cwlVersion: v1.1
baseCommand:
- tadbit
- parse
