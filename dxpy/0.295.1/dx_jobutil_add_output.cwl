class: CommandLineTool
id: ../../../dx_jobutil_add_output.cwl
inputs:
- id: class
  doc: ''
  type: boolean
  inputBinding:
    prefix: --class
- id: array
  doc: ''
  type: boolean
  inputBinding:
    prefix: --array
outputs: []
cwlVersion: v1.1
baseCommand:
- dx-jobutil-add-output
