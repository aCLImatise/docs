class: CommandLineTool
id: ClusterSets.py_cluster_pass.cwl
inputs:
- id: in_cluster_sets_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ClusterSets.py
- cluster-pass
