class: CommandLineTool
id: phyloseq_composition.Rmd.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/frogs:3.2.1--py37_0
cwlVersion: v1.1
baseCommand:
- phyloseq_composition.Rmd
