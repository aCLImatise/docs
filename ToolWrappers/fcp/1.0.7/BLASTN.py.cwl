class: CommandLineTool
id: BLASTN.py.cwl
inputs:
- id: in_blastn_path
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_query_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_results_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- BLASTN.py
