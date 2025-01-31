class: CommandLineTool
id: sierrapy_mutations.cwl
inputs:
- id: in_query
  doc: "A file contains GraphQL fragment definition on\n`MutationsAnalysis`."
  type: File?
  inputBinding:
    prefix: --query
- id: in_output
  doc: File path to store the JSON result.
  type: File?
  inputBinding:
    prefix: --output
- id: in_ugly
  doc: Output compressed JSON result.
  type: boolean?
  inputBinding:
    prefix: --ugly
- id: in_mutations_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sierrapy
- mutations
