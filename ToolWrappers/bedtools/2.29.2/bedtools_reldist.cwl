class: CommandLineTool
id: bedtools_reldist.cwl
inputs:
- id: in_detail
  doc: the relativedistance for each interval in A
  type: string?
  inputBinding:
    prefix: -detail
- id: in_b
  doc: ''
  type: string?
  inputBinding:
    prefix: -b
- id: in_a
  doc: ''
  type: string?
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bedtools
- reldist
