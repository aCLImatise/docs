class: CommandLineTool
id: ../../../mb_filter_sites_gff_file.cwl
inputs:
- id: padding_bp
  doc: ''
  type: string
  inputBinding:
    prefix: --padding_bp
- id: mb_filter_sites
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-filter-sites
- gff_file
