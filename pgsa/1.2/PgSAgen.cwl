class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/PgSAgen.cwl
inputs:
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: k
  doc: ''
  type: string
  inputBinding:
    prefix: -k
- id: c
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c
- id: p
  doc: ''
  type: boolean
  inputBinding:
    prefix: -p
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: reads_srcfile
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: pair_srcfile
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: index_prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- PgSAgen
