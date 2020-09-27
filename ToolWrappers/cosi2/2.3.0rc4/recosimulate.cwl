class: CommandLineTool
id: recosimulate.cwl
inputs:
- id: in_reco_sim
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_parameter_file_name
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- recosimulate
