class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/positionalTblCheck.cwl
inputs:
- id: verbose
  doc: n>=2, print tables as checked
  type: string
  inputBinding:
    prefix: -verbose
- id: db
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: table
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- positionalTblCheck
