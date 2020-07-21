class: CommandLineTool
id: ../../../checkm_taxon_set_taxon.cwl
inputs:
- id: q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
- id: tmpdir
  doc: ''
  type: string
  inputBinding:
    prefix: --tmpdir
- id: check_m
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tax_on_set
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- checkm
- taxon_set
- taxon
