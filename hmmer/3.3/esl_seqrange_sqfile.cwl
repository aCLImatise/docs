class: CommandLineTool
id: ../../../esl_seqrange_sqfile.cwl
inputs:
- id: proc_idx
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: nproc
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-seqrange
- sqfile
