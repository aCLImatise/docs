class: CommandLineTool
id: bioconda2cwldocker.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bioconda2biocontainer:0.0.6--py_0
cwlVersion: v1.1
baseCommand:
- bioconda2cwldocker
