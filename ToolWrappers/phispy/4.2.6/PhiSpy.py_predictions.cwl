class: CommandLineTool
id: PhiSpy.py_predictions.cwl
inputs:
- id: in_m
  doc: ''
  type: string?
  inputBinding:
    prefix: -m
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_phi_spy_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phispy:4.2.6--py38hed8969a_0
cwlVersion: v1.1
baseCommand:
- PhiSpy.py
- predictions
