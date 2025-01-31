class: CommandLineTool
id: txt2ftbl.py_FLUX_NAME.cwl
inputs:
- id: in_txttwoftbldotpy
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/influx_si:5.4.0--py_0
cwlVersion: v1.1
baseCommand:
- txt2ftbl.py
- FLUX_NAME
