class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/randseq.cwl
inputs:
- id: option
  doc: ''
  type: string
  inputBinding:
    prefix: -option
- id: run_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- randseq
