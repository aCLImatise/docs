version 1.0

task GmxCluster {
  input {
    String? config
    String? input_index_path
    String? input_structure_path
    String? input_t_raj_path
    String? output_pdb_path
  }
  command <<<
    gmx_cluster \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_index_path) then ("--input_index_path " +  '"' + input_index_path + '"') else ""} \
      ~{if defined(input_structure_path) then ("--input_structure_path " +  '"' + input_structure_path + '"') else ""} \
      ~{if defined(input_t_raj_path) then ("--input_traj_path " +  '"' + input_t_raj_path + '"') else ""} \
      ~{if defined(output_pdb_path) then ("--output_pdb_path " +  '"' + output_pdb_path + '"') else ""}
  >>>
  parameter_meta {
    config: "Configuration file"
    input_index_path: "Path to the GROMACS index file. Accepted formats: ndx."
    input_structure_path: "Path to the input structure file. Accepted formats: tpr, gro, g96, pdb, brk, ent."
    input_t_raj_path: "Path to the GROMACS trajectory file. Accepted formats: xtc, trr, cpt, gro, g96, pdb, tng."
    output_pdb_path: "Path to the output cluster file. Accepted formats: xtc, trr, cpt, gro, g96, pdb, tng."
  }
}