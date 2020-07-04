version 1.0

task CpptrajRms {
  input {
    String? config
    String? input_exp_path
    String? input_top_path
    String? input_t_raj_path
    String? output_c_ppt_raj_path
  }
  command <<<
    cpptraj_rms \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_exp_path) then ("--input_exp_path " +  '"' + input_exp_path + '"') else ""} \
      ~{if defined(input_top_path) then ("--input_top_path " +  '"' + input_top_path + '"') else ""} \
      ~{if defined(input_t_raj_path) then ("--input_traj_path " +  '"' + input_t_raj_path + '"') else ""} \
      ~{if defined(output_c_ppt_raj_path) then ("--output_cpptraj_path " +  '"' + output_c_ppt_raj_path + '"') else ""}
  >>>
  parameter_meta {
    config: "Configuration file"
    input_exp_path: "Path to the experimental reference file (required if reference = experimental)."
    input_top_path: "Path to the input structure or topology file. Accepted formats: top, pdb, prmtop, parmtop, zip."
    input_t_raj_path: "Path to the input trajectory to be processed. Accepted formats: crd, cdf, netcdf, restart, ncrestart, restartnc, dcd, charmm, cor, pdb, mol2, trr, gro, binpos, xtc, cif, arc, sqm, sdf, conflib."
    output_c_ppt_raj_path: "Path to the output processed analysis."
  }
}