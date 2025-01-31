class: CommandLineTool
id: grompp_mdrun.cwl
inputs:
- id: in_config
  doc: This file can be a YAML file, JSON file or JSON string
  type: File?
  inputBinding:
    prefix: --config
- id: in_output_d_hdl_path
  doc: ''
  type: File?
  inputBinding:
    prefix: --output_dhdl_path
- id: in_output_cpt_path
  doc: ''
  type: File?
  inputBinding:
    prefix: --output_cpt_path
- id: in_output_xtc_path
  doc: ''
  type: File?
  inputBinding:
    prefix: --output_xtc_path
- id: in_input_mdp_path
  doc: ''
  type: File?
  inputBinding:
    prefix: --input_mdp_path
- id: in_input_ndx_path
  doc: ''
  type: string?
  inputBinding:
    prefix: --input_ndx_path
- id: in_input_cpt_path
  doc: ''
  type: File?
  inputBinding:
    prefix: --input_cpt_path
- id: in_output_log_path
  doc: ''
  type: File?
  inputBinding:
    prefix: --output_log_path
- id: in_output_edr_path
  doc: ''
  type: string?
  inputBinding:
    prefix: --output_edr_path
- id: in_output_gro_path
  doc: ''
  type: File?
  inputBinding:
    prefix: --output_gro_path
- id: in_output_trr_path
  doc: ''
  type: string?
  inputBinding:
    prefix: --output_trr_path
- id: in_input_top_zip_path
  doc: ''
  type: File?
  inputBinding:
    prefix: --input_top_zip_path
- id: in_input_gro_path
  doc: ''
  type: File?
  inputBinding:
    prefix: --input_gro_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_d_hdl_path
  doc: ''
  type: File?
  outputBinding:
    glob: $(inputs.in_output_d_hdl_path)
- id: out_output_cpt_path
  doc: ''
  type: File?
  outputBinding:
    glob: $(inputs.in_output_cpt_path)
- id: out_output_xtc_path
  doc: ''
  type: File?
  outputBinding:
    glob: $(inputs.in_output_xtc_path)
- id: out_output_log_path
  doc: ''
  type: File?
  outputBinding:
    glob: $(inputs.in_output_log_path)
- id: out_output_gro_path
  doc: ''
  type: File?
  outputBinding:
    glob: $(inputs.in_output_gro_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biobb_md:3.5.1--py_0
cwlVersion: v1.1
baseCommand:
- grompp_mdrun
