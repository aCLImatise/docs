class: CommandLineTool
id: module_enrichment.py_perms.cwl
inputs:
- id: in_perms
  doc: ''
  type: string?
  inputBinding:
    prefix: --perms
- id: in_correl_s
  doc: ''
  type: string?
  inputBinding:
    prefix: --correls
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/scnic:0.6.2--py_0
cwlVersion: v1.1
baseCommand:
- module_enrichment.py
- perms
