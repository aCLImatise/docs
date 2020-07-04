version 1.0

task CdsMappingStats {
  input {
    String? kmer_length_use
    String? graph
    File? cds_queries
    File? paths
    File? edge_info
    String? threads
    File? colors
    String? workdir
  }
  command <<<
    cds-mapping-stats \
      ~{if defined(kmer_length_use) then ("-k " +  '"' + kmer_length_use + '"') else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(cds_queries) then ("--cds-queries " +  '"' + cds_queries + '"') else ""} \
      ~{if defined(paths) then ("--paths " +  '"' + paths + '"') else ""} \
      ~{if defined(edge_info) then ("--edge-info " +  '"' + edge_info + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(colors) then ("--colors " +  '"' + colors + '"') else ""} \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""}
  >>>
  parameter_meta {
    kmer_length_use: "k-mer length to use"
    graph: "In GFA (ending with .gfa) or prefix to SPAdes graph pack"
    cds_queries: "Path to FASTA file with ground truth CDS sequences"
    paths: "Destination for outputting paths corresponding to CDS sequences"
    edge_info: "Destination for outputting edge usage information"
    threads: "# of threads to use (default: max_threads / 2)"
    colors: "Destination for outputting edge coloring to be displayed in Bandage"
    workdir: "scratch directory to use (default: ./tmp)"
  }
}