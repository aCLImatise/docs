class: CommandLineTool
id: fraggraph_gen.cwl
inputs:
- id: in_smiles_or_inch_i_string
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_max_depth
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fraggraph-gen
