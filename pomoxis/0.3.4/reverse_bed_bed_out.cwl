class: CommandLineTool
id: ../../../reverse_bed_bed_out.cwl
inputs:
- id: reverse_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bed_in
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ref_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: bed_out
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- reverse_bed
- bed_out
