class: CommandLineTool
id: pybel_summarize_OPTIONS.cwl
inputs:
- id: path
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pybel
- summarize
- OPTIONS
