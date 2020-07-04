class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gmx_rms.cwl
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
  doc: 'Path to the input structure file. Accepted formats: tpr, gro, g96, pdb, brk,
    ent.'
  type: string
  inputBinding:
    prefix: --input_structure_path
- id: input_t_raj_path
  doc: 'Path to the GROMACS trajectory file. Accepted formats: xtc, trr, cpt, gro,
    g96, pdb, tng.'
  type: string
  inputBinding:
    prefix: --input_traj_path
- id: output_x_vg_path
  doc: 'Path to the XVG output file. Accepted formats: xvg.'
  type: string
  inputBinding:
    prefix: --output_xvg_path
outputs: []
cwlVersion: v1.1
baseCommand:
- gmx_rms
