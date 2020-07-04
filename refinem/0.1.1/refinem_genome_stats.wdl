version 1.0

task RefinemGenomeStats {
  input {
    String? cpus
    Boolean? silent
    String scaffold_stats_file
    String output_file
  }
  command <<<
    refinem genome_stats \
      ~{scaffold_stats_file} \
      ~{output_file} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{true="--silent" false="" silent}
  >>>
  parameter_meta {
    cpus: "number of CPUs to use (default: 1)"
    silent: "suppress output of logger (default: False)"
    scaffold_stats_file: "file with statistics for each scaffold"
    output_file: "output file with genome statistics"
  }
}