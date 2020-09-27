class: CommandLineTool
id: funannotate_species.cwl
inputs:
- id: in_d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: in_p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: in_a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: in_s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: in_species_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- funannotate
- species
