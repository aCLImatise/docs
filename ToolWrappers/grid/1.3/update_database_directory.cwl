class: CommandLineTool
id: update_database_directory.cwl
inputs:
- id: in__is_required
  doc: '[option] is required'
  type: boolean?
  inputBinding:
    prefix: -d
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- update_database
- directory
