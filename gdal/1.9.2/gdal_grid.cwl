class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gdal_grid.cwl
inputs:
- id: help_general
  doc: ''
  type: boolean
  inputBinding:
    prefix: --help-general
- id: formats
  doc: ''
  type: boolean
  inputBinding:
    prefix: --formats
outputs: []
cwlVersion: v1.1
baseCommand:
- gdal_grid
