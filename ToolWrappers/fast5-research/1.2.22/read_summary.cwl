class: CommandLineTool
id: read_summary.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fast5-research:1.2.22--pyh864c0ab_0
cwlVersion: v1.1
baseCommand:
- read_summary
