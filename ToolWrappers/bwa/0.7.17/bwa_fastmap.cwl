class: CommandLineTool
id: bwa_fastmap.cwl
inputs:
- id: in_min_smem_length
  doc: min SMEM length to output [17]
  type: long?
  inputBinding:
    prefix: -l
- id: in_max_interval_size
  doc: max interval size to find coordiantes [20]
  type: long?
  inputBinding:
    prefix: -w
- id: in_min_smem_interval
  doc: min SMEM interval size [1]
  type: long?
  inputBinding:
    prefix: -i
- id: in_max_mem_length
  doc: max MEM length [2147483647]
  type: long?
  inputBinding:
    prefix: -L
- id: in_stop_mem_is
  doc: stop if MEM is longer than -l with a size less than INT [0]
  type: long?
  inputBinding:
    prefix: -I
- id: in_idx_base
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bwa
- fastmap
