class: CommandLineTool
id: __init__.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/kmergenie:1.7051--py38r40h197edbe_0
cwlVersion: v1.1
baseCommand:
- __init__.py
