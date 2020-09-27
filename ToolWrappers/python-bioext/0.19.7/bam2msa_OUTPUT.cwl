class: CommandLineTool
id: bam2msa_OUTPUT.cwl
inputs:
- id: in_r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: in_bam_two_msa
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bam2msa
- OUTPUT
