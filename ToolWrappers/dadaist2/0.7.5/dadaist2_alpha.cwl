class: CommandLineTool
id: dadaist2_alpha.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dadaist2:0.7.5--0
cwlVersion: v1.1
baseCommand:
- dadaist2-alpha
