class: CommandLineTool
id: fa_coords.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gmap:2020.10.14--pl526h2f06484_0
cwlVersion: v1.1
baseCommand:
- fa_coords
