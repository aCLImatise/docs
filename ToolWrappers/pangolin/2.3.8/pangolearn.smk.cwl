class: CommandLineTool
id: pangolearn.smk.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pangolin:2.3.8--py_0
cwlVersion: v1.1
baseCommand:
- pangolearn.smk
