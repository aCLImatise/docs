class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ssu_esl_compstruct_trusted file.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: test_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-esl-compstruct
- trusted file
