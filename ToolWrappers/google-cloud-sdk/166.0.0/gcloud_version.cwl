class: CommandLineTool
id: gcloud_version.cwl
inputs:
- id: in_optional
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_flags
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- version
