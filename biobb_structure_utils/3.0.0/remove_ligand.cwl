class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/remove_ligand.cwl
inputs:
- id: config
  doc: This file can be a YAML file, JSON file or JSON string
  type: string
  inputBinding:
    prefix: --config
- id: input_structure_path
  doc: Input structure file name
  type: string
  inputBinding:
    prefix: --input_structure_path
- id: output_structure_path
  doc: Output structure file name
  type: string
  inputBinding:
    prefix: --output_structure_path
outputs: []
cwlVersion: v1.1
baseCommand:
- remove_ligand
