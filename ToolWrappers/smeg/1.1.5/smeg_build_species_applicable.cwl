class: CommandLineTool
id: smeg_build_species_applicable.cwl
inputs:
- id: in__is_required
  doc: '[option] is required'
  type: boolean?
  inputBinding:
    prefix: -g
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- smeg
- build_species
- applicable
