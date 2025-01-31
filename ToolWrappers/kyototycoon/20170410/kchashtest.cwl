class: CommandLineTool
id: kchashtest.cwl
inputs:
- id: in_hard
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -hard
- id: in_it
  doc: ''
  type: long?
  inputBinding:
    prefix: -it
- id: in_th
  doc: ''
  type: long?
  inputBinding:
    prefix: -th
- id: in_rnd
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -rnd
- id: in_order
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_queue
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_tran
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_wicked
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
  dockerPull: quay.io/biocontainers/kyototycoon:20170410--h896b458_0
cwlVersion: v1.1
baseCommand:
- kchashtest
