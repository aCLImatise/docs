class: CommandLineTool
id: fasta_utils_uid.cwl
inputs:
- id: in_verbose
  doc: "Filename of a table to record the changes (by default\ndiscards it)"
  type: File?
  inputBinding:
    prefix: --verbose
- id: in_fast_a_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_output_file
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
- fasta-utils
- uid
