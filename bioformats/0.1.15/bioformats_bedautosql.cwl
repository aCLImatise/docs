class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bioformats_bedautosql.cwl
inputs:
- id: name
  doc: 'a table name (default: Table)'
  type: string
  inputBinding:
    prefix: --name
- id: description
  doc: 'a table description (default: Description)'
  type: string
  inputBinding:
    prefix: --description
- id: lines
  doc: 'the number of lines to analyzefrom the input file (default: 100)'
  type: string
  inputBinding:
    prefix: --lines
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: bed_file
  doc: a BED file
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: an output file
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bioformats
- bedautosql
