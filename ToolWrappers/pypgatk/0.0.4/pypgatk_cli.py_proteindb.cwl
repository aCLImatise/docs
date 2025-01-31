class: CommandLineTool
id: pypgatk_cli.py_proteindb.cwl
inputs:
- id: in_p_ypg_atk_cli_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_args
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pypgatk_cli.py
- proteindb
