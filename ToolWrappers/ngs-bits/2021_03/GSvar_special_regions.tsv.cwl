class: CommandLineTool
id: GSvar_special_regions.tsv.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- GSvar_special_regions.tsv
