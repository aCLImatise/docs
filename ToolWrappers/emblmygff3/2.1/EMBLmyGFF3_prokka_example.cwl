class: CommandLineTool
id: EMBLmyGFF3_prokka_example.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/emblmygff3:2.1--py_0
cwlVersion: v1.1
baseCommand:
- EMBLmyGFF3-prokka-example
