class: CommandLineTool
id: triplet_dist.cwl
inputs:
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_filename_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_filename_two
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- triplet_dist
