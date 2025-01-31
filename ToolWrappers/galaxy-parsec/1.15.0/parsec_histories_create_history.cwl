class: CommandLineTool
id: parsec_histories_create_history.cwl
inputs:
- id: in_name
  doc: Optional name for new history
  type: string?
  inputBinding:
    prefix: --name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- parsec
- histories
- create_history
