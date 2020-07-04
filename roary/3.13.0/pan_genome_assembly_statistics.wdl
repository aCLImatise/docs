version 1.0

task PanGenomeAssemblyStatistics {
  input {
    Int? number_of_threads
    String? output_filename
    Float? cd
    Boolean? verbose_output_stdout
    Boolean? print_version_exit
    String gene_presence_absence_dot_csv
  }
  command <<<
    pan_genome_assembly_statistics \
      ~{gene_presence_absence_dot_csv} \
      ~{if defined(number_of_threads) then ("-p " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(output_filename) then ("-o " +  '"' + output_filename + '"') else ""} \
      ~{if defined(cd) then ("-cd " +  '"' + cd + '"') else ""} \
      ~{true="-v" false="" verbose_output_stdout} \
      ~{true="-w" false="" print_version_exit}
  >>>
  parameter_meta {
    number_of_threads: "number of threads [1]        "
    output_filename: "output filename [assembly_statistics.csv]"
    cd: "percentage of isolates a gene must be in to be core [99]"
    verbose_output_stdout: "verbose output to STDOUT"
    print_version_exit: "print version and exit"
    gene_presence_absence_dot_csv: ""
  }
}