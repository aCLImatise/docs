class: CommandLineTool
id: picard.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/picard-slim:2.25.2--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- picard
