class: CommandLineTool
id: get_flag_relative_abundances_table.pl.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pgcgap:1.0.26--py37pl526_0
cwlVersion: v1.1
baseCommand:
- get_flag_relative_abundances_table.pl
