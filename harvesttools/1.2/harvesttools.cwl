class: CommandLineTool
id: ../../../harvesttools.cwl
inputs:
- id: quiet_mode
  doc: (quiet mode)
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- harvesttools
