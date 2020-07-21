class: CommandLineTool
id: ../../../tadbit_merge.cwl
inputs:
- id: workdir
  doc: path to a new output folder
  type: File
  inputBinding:
    prefix: --workdir
- id: workdir_one
  doc: path to working directory of the first HiC data sample to merge
  type: File
  inputBinding:
    prefix: --workdir1
- id: workdir_two
  doc: path to working directory of the second HiC data sample to merge
  type: File
  inputBinding:
    prefix: --workdir2
- id: bam_one
  doc: path to the first TADbit-generated BAM file with all reads (other wise the
    tool will guess from the working directory database)
  type: File
  inputBinding:
    prefix: --bam1
- id: nox
  doc: no display server (X screen)
  type: boolean
  inputBinding:
    prefix: --noX
- id: bam_two
  doc: path to the second TADbit-generated BAM file with all reads (other wise the
    tool will guess from the working directory database)
  type: File
  inputBinding:
    prefix: --bam2
- id: cpus
  doc: '[8] Maximum number of CPU cores available in the execution host. If higher
    than 1, tasks with multi-threading capabilities will enabled (if 0 all available)
    cores will be used'
  type: string
  inputBinding:
    prefix: --cpus
- id: resolution
  doc: resolution at which to do the comparison, and generate the matrices.
  type: long
  inputBinding:
    prefix: --resolution
- id: skip_comparison
  doc: skip the comparison between replicates (faster). Comparisons are performed
    at 3 levels 1- comparing first diagonals of each experiment (and generating SCC
    score and standard deviation see https://doi.org/10.1101/gr.220640.117) 2- Comparing
    the first eigenvectors of input experiments 3- Generates reproducibility score
    using function from https://doi.org/10.1093/bioinformatics/btx152
  type: boolean
  inputBinding:
    prefix: --skip_comparison
- id: skip_merge
  doc: skip the merge of replicates (faster).
  type: boolean
  inputBinding:
    prefix: --skip_merge
- id: save
  doc: '[genome] save genomic or chromosomic matrix.'
  type: string[]
  inputBinding:
    prefix: --save
- id: jobid_one
  doc: Use as input data generated by a job with a given jobid. Use tadbit describe
    to find out which.
  type: long
  inputBinding:
    prefix: --jobid1
- id: jobid_two
  doc: Use as input data generated by a job with a given jobid. Use tadbit describe
    to find out which.
  type: long
  inputBinding:
    prefix: --jobid2
- id: force
  doc: overwrite previously run job
  type: boolean
  inputBinding:
    prefix: --force
- id: norm
  doc: compare normalized matrices
  type: boolean
  inputBinding:
    prefix: --norm
- id: biases_one
  doc: path to file with precalculated biases by columns
  type: File
  inputBinding:
    prefix: --biases1
- id: biases_two
  doc: path to file with precalculated biases by columns
  type: File
  inputBinding:
    prefix: --biases2
- id: filter
  doc: "[[1, 2, 3, 4, 6, 7, 9, 10]] Use filters to define a set os valid pair of reads\
    \ e.g.: '--apply 1 2 3 4 8 9 10'. Where these numberscorrespond to: 1: self-circle,\
    \ 2: dangling-end, 3: error, 4: extra dangling-end, 5: too close from RES, 6:\
    \ too short, 7: too large, 8: over-represented, 9: duplicated, 10: random breaks,\
    \ 11: trans-chromosomic"
  type: long[]
  inputBinding:
    prefix: --filter
- id: sam_tools
  doc: path samtools binary
  type: File
  inputBinding:
    prefix: --samtools
- id: tmp_db
  doc: if provided uses this directory to manipulate the database
  type: File
  inputBinding:
    prefix: --tmpdb
outputs: []
cwlVersion: v1.1
baseCommand:
- tadbit
- merge
