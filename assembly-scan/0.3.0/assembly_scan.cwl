class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/assembly_scan.cwl
inputs:
- id: assembly_summary_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: assembly
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- assembly-scan
