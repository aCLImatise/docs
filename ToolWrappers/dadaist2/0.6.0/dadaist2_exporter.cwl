class: CommandLineTool
id: dadaist2_exporter.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dadaist2:0.6.0--1
cwlVersion: v1.1
baseCommand:
- dadaist2-exporter
