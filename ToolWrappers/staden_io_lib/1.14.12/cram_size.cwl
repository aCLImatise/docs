class: CommandLineTool
id: cram_size.cwl
inputs:
- id: in_filename_dot_cram
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cram_size
