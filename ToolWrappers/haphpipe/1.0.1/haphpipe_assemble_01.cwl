class: CommandLineTool
id: haphpipe_assemble_01.cwl
inputs:
- id: in_read_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_read_two
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_reference_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_reference_gtf
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_samp_id
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_outdir
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- haphpipe_assemble_01
