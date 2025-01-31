class: CommandLineTool
id: drive_pub.cwl
inputs:
- id: in_id
  doc: publish by id instead of path
  type: boolean?
  inputBinding:
    prefix: -id
- id: in_quiet
  doc: "if set, do not log anything but errors\n"
  type: boolean?
  inputBinding:
    prefix: -quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- drive
- pub
