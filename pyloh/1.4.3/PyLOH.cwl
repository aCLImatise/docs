class: CommandLineTool
id: ../../../PyLOH.py_BAF_heatmap.cwl
inputs:
- id: filename_base
  doc: Base name of preprocessed files created.
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- PyLOH.py
- BAF_heatmap
