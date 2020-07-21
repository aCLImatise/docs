class: CommandLineTool
id: ../../../rtg_sdf2fastq.cwl
inputs:
- id: input
  doc: SDF containing sequences
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: output filename (extension added if not present). Use '-' to write to standard
    output
  type: File
  inputBinding:
    prefix: --output
- id: default_quality
  doc: default quality value to use if the SDF does not contain quality data (0-63)
  type: long
  inputBinding:
    prefix: --default-quality
- id: interleave
  doc: interleave paired data into a single output file. Default is to split to separate
    output files
  type: boolean
  inputBinding:
    prefix: --interleave
- id: line_length
  doc: maximum number of nucleotides to print on a line of output. A value of 0 indicates
    no limit (Default is 0)
  type: long
  inputBinding:
    prefix: --line-length
- id: no_gzip
  doc: do not gzip the output
  type: boolean
  inputBinding:
    prefix: --no-gzip
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- sdf2fastq
