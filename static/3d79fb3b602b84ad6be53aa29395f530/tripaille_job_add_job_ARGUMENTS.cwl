class: CommandLineTool
id: tripaille_job_add_job_ARGUMENTS.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: module
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: callback
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- job
- add_job
- ARGUMENTS
