class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/imagespread.cwl
inputs:
- id: seq_name_list
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: msp_list
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: number_of_output_files
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- imagespread
