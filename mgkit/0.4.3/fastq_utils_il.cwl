class: CommandLineTool
id: ../../../fastq_utils_il.cwl
inputs:
- id: mate_one_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: mate_two_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fast_q_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-utils
- il
