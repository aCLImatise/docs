class: CommandLineTool
id: ../../../gmx_trjconv_str.cwl
inputs:
- id: config
  doc: Configuration file
  type: string
  inputBinding:
    prefix: --config
- id: input_index_path
  doc: 'Path to the GROMACS index file. Accepted formats: ndx.'
  type: string
  inputBinding:
    prefix: --input_index_path
- id: input_structure_path
  doc: 'Path to the input structure file. Accepted formats: xtc, trr, cpt, gro, g96,
    pdb, tng.'
  type: string
  inputBinding:
    prefix: --input_structure_path
- id: input_top_path
  doc: 'Path to the GROMACS input topology file. Accepted formats: tpr, gro, g96,
    pdb, brk, ent.'
  type: string
  inputBinding:
    prefix: --input_top_path
- id: output_str_path
  doc: 'Path to the output file. Accepted formats: xtc, trr, gro, g96, pdb, tng.'
  type: string
  inputBinding:
    prefix: --output_str_path
outputs: []
cwlVersion: v1.1
baseCommand:
- gmx_trjconv_str
