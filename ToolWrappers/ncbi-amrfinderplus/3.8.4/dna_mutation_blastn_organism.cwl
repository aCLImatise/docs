class: CommandLineTool
id: dna_mutation_blastn_organism.cwl
inputs:
- id: in_dna_mutation
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_blastn
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_mutation
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_organism
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dna_mutation
- blastn
- organism
