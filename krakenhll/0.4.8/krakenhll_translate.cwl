class: CommandLineTool
id: ../../../krakenhll_translate.cwl
inputs:
- id: db
  doc: ''
  type: string
  inputBinding:
    prefix: --db
- id: mpa_format
  doc: ''
  type: boolean
  inputBinding:
    prefix: --mpa-format
outputs: []
cwlVersion: v1.1
baseCommand:
- krakenhll-translate
