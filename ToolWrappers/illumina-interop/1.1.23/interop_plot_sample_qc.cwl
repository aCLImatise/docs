class: CommandLineTool
id: interop_plot_sample_qc.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/illumina-interop:1.1.23--h1b792b2_0
cwlVersion: v1.1
baseCommand:
- interop_plot_sample_qc
