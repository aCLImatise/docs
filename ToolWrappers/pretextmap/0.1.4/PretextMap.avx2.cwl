class: CommandLineTool
id: PretextMap.avx2.cwl
inputs:
- id: in_sort_order
  doc: ({descend}, ascend)
  type: boolean?
  inputBinding:
    prefix: --sortorder
- id: in_filter_include
  doc: '"seq_ [, seq_]*"'
  type: string?
  inputBinding:
    prefix: --filterInclude
- id: in_filter_exclude
  doc: '"seq_ [, seq_]*")'
  type: boolean?
  inputBinding:
    prefix: --filterExclude
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pretextmap:0.1.4--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- PretextMap.avx2
