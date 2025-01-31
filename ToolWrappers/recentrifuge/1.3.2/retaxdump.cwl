class: CommandLineTool
id: retaxdump.cwl
inputs:
- id: in_nodes_path
  doc: "path for the nodes information files (nodes.dmp and\nnames.dmp from NCBI)"
  type: File?
  inputBinding:
    prefix: --nodespath
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -V
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/recentrifuge:1.3.2--py_0
cwlVersion: v1.1
baseCommand:
- retaxdump
