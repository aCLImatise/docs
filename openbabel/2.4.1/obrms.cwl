class: CommandLineTool
id: ../../../obrms.cwl
inputs:
- id: first_only
  doc: ''
  type: boolean
  inputBinding:
    prefix: -firstonly
outputs: []
cwlVersion: v1.1
baseCommand:
- obrms
