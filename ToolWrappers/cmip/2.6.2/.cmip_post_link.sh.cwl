class: CommandLineTool
id: .cmip_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cmip:2.6.2--hc99cbb1_0
cwlVersion: v1.1
baseCommand:
- .cmip-post-link.sh
