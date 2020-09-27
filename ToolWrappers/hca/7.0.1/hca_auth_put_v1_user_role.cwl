class: CommandLineTool
id: hca_auth_put_v1_user_role.cwl
inputs:
- id: in_user_id
  doc: "User ID (email).\n--action ACTION\n"
  type: string
  inputBinding:
    prefix: --user-id
- id: in_roles
  doc: ''
  type: string
  inputBinding:
    prefix: --roles
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hca
- auth
- put-v1-user-role
