class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/medpy_intersection.py_output2.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
- id: f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f
- id: me_dpy_intersection_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_one
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: input_two
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_one
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: output_two
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- medpy_intersection.py
- output2
