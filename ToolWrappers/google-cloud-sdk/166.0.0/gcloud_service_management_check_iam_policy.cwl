class: CommandLineTool
id: gcloud_service_management_check_iam_policy.cwl
inputs:
- id: in_service
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_optional
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_flags
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
- gcloud
- service-management
- check-iam-policy
