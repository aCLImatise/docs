version 1.0

task Production.py {
  input {
    String? input_pdb_file
    String? topologie_gromacs_format
    String? output_directory
    String? output_file_name
    String? time
    String? dt
    String? nt
    String? nt_mpi
    String? gpu_id
  }
  command <<<
    production.py \
      ~{if defined(input_pdb_file) then ("-f " +  '"' + input_pdb_file + '"') else ""} \
      ~{if defined(topologie_gromacs_format) then ("-p " +  '"' + topologie_gromacs_format + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if defined(output_file_name) then ("-n " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(time) then ("-time " +  '"' + time + '"') else ""} \
      ~{if defined(dt) then ("-dt " +  '"' + dt + '"') else ""} \
      ~{if defined(nt) then ("-nt " +  '"' + nt + '"') else ""} \
      ~{if defined(nt_mpi) then ("-ntmpi " +  '"' + nt_mpi + '"') else ""} \
      ~{if defined(gpu_id) then ("-gpu_id " +  '"' + gpu_id + '"') else ""}
  >>>
  parameter_meta {
    input_pdb_file: "Input PDB file"
    topologie_gromacs_format: "Topologie in gromacs format .top"
    output_directory: "Output Directory"
    output_file_name: "Output file name"
    time: "Production time, default=10"
    dt: "Equilibration dt, default=0.005 (5 fs)"
    nt: "Total number of threads to start, default=0"
    nt_mpi: "Number of thread-MPI threads to start, default=0"
    gpu_id: "List of GPU device id-s to use, default=\"\""
  }
}