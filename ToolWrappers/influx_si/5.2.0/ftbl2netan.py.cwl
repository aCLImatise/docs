class: CommandLineTool
id: ftbl2netan.py.cwl
inputs:
- id: in_network
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ftbl2netan.py
