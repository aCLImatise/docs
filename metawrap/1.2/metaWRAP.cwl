class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/metaWRAP.cwl
inputs:
- id: show_config
  doc: show where the metawrap configuration files are stored
  type: boolean
  inputBinding:
    prefix: --show-config
outputs: []
cwlVersion: v1.1
baseCommand:
- metaWRAP
