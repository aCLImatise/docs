class: CommandLineTool
id: D2_FilterPhyloseq.R.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dadaist2:0.8.0--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- D2-FilterPhyloseq.R
