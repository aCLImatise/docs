class: CommandLineTool
id: nf_core_launch_pipeline name.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: pipeline_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- nf-core
- launch
- pipeline name
