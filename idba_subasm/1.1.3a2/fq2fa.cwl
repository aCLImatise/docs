class: CommandLineTool
id: ../../../fq2fa.cwl
inputs:
- id: paired
  doc: if the reads are paired-end in one file
  type: boolean
  inputBinding:
    prefix: --paired
- id: merge
  doc: if the reads are paired-end in two files
  type: boolean
  inputBinding:
    prefix: --merge
- id: filter
  doc: filter out reads containing 'N'
  type: boolean
  inputBinding:
    prefix: --filter
- id: tmp_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tmp_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fq2fa
