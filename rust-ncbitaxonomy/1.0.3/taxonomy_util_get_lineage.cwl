class: CommandLineTool
id: ../../../taxonomy_util_get_lineage.cwl
inputs:
- id: delimiter
  doc: Delimiter for lineage string
  type: string
  inputBinding:
    prefix: --delimiter
- id: name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- taxonomy_util
- get_lineage
