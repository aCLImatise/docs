class: CommandLineTool
id: bactopia_citations.py.cwl
inputs:
- id: in_directory_where_repository
  doc: Directory where Bactopia repository is stored.
  type: Directory?
  inputBinding:
    prefix: --bactopia
- id: in_var_1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_citations
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bactopia-citations.py
