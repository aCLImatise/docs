class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cactus_covered_intervals.cwl
inputs:
- id: query_offsets
  doc: input query names contain offsets, as described below (by default input query
    names do not contain offsets)
  type: boolean
  inputBinding:
    prefix: --queryoffsets
- id: mark_end
  doc: write a comment at the end of the output file
  type: boolean
  inputBinding:
    prefix: --markend
- id: progress
  doc: report each chromosome as we encounter it
  type: string
  inputBinding:
    prefix: --progress
outputs: []
cwlVersion: v1.1
baseCommand:
- cactus_covered_intervals
