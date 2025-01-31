class: CommandLineTool
id: varlociraptor_filter_calls_posterior_odds.cwl
inputs:
- id: in_events
  doc: '...    Events to consider.'
  type: string?
  inputBinding:
    prefix: --events
- id: in_odds
  doc: "Kass-Raftery score to filter against. [possible values: none, barely, positive,\
    \ strong,\nvery-strong]\n"
  type: string?
  inputBinding:
    prefix: --odds
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/varlociraptor:3.0.1--hd302352_0
cwlVersion: v1.1
baseCommand:
- varlociraptor
- filter-calls
- posterior-odds
