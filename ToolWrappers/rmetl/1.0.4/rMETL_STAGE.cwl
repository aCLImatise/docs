class: CommandLineTool
id: rMETL_STAGE.cwl
inputs:
- id: in_rm_etl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rMETL
- STAGE
