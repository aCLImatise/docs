class: CommandLineTool
id: ssu_esl_mask_sqfile.cwl
inputs:
- id: in_mask_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ssu-esl-mask
- sqfile
