class: CommandLineTool
id: cooler_ls.cwl
inputs:
- id: in_long
  doc: Long listing format
  type: boolean?
  inputBinding:
    prefix: --long
- id: in_cool_path
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cooler:0.8.11--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- cooler
- ls
