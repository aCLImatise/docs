class: CommandLineTool
id: index_fasta_file.cwl
inputs:
- id: in_index_fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fast_a_filename
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_index_filename
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0
cwlVersion: v1.1
baseCommand:
- index-fasta-file
