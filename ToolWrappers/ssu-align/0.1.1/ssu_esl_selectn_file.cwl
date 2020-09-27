class: CommandLineTool
id: ssu_esl_selectn_file.cwl
inputs:
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_ssu_esl_select_n
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_n
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ssu-esl-selectn
- file
