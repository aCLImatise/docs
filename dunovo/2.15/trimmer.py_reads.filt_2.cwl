class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/trimmer.py_reads.filt_2.fq.cwl
inputs:
- id: trimmer_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_one_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: input_two_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_one_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: output_two_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- trimmer.py
- reads.filt_2.fq
