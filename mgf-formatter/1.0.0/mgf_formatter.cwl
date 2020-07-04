class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mgf_formatter.cwl
inputs:
- id: it_raq_filter
  doc: 'Default: false'
  type: boolean
  inputBinding:
    prefix: --itraq_filter
- id: mgf_format
  doc: 'Default: DEFAULT'
  type: boolean
  inputBinding:
    prefix: --mgf_format
- id: no_split_multiple_charge_states
  doc: 'Default: false'
  type: boolean
  inputBinding:
    prefix: --no_split_multiple_charge_states
- id: output
  doc: Output
  type: boolean
  inputBinding:
    prefix: --output
- id: main_class
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mgf-formatter
