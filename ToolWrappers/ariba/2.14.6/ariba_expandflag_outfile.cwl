class: CommandLineTool
id: ariba_expandflag_outfile.cwl
inputs:
- id: in_ariba
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_expand_flag
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_dot_report_dot_tsv
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ariba:2.14.6--py36hf0b53f7_0
cwlVersion: v1.1
baseCommand:
- ariba
- expandflag
- outfile
