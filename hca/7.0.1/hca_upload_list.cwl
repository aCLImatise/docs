class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hca_upload_list.cwl
inputs:
- id: log_level
  doc: ''
  type: string
  inputBinding:
    prefix: --log-level
- id: hca
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- upload
- list
