version 1.0

task SeuratFindClusters.R {
  input {
    String? input_object_file
    String? input_format
    String? output_format
    String? resolution
    String? algorithm
    String? tmp_file_location
    String? modularity_fxn
    String? method
    String? output_object_file
    String? output_text_file
    String? graph_name
    String? n_random_starts
    String? n_iterations
    Boolean? group_singletons
    String? random_seed
  }
  command <<<
    seurat-find-clusters.R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(resolution) then ("--resolution " +  '"' + resolution + '"') else ""} \
      ~{if defined(algorithm) then ("--algorithm " +  '"' + algorithm + '"') else ""} \
      ~{if defined(tmp_file_location) then ("--tmp-file-location " +  '"' + tmp_file_location + '"') else ""} \
      ~{if defined(modularity_fxn) then ("--modularity-fxn " +  '"' + modularity_fxn + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""} \
      ~{if defined(output_text_file) then ("--output-text-file " +  '"' + output_text_file + '"') else ""} \
      ~{if defined(graph_name) then ("--graph-name " +  '"' + graph_name + '"') else ""} \
      ~{if defined(n_random_starts) then ("--nrandom-starts " +  '"' + n_random_starts + '"') else ""} \
      ~{if defined(n_iterations) then ("--n-iterations " +  '"' + n_iterations + '"') else ""} \
      ~{true="--group-singletons" false="" group_singletons} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""}
  >>>
  parameter_meta {
    input_object_file: "File name in which a serialized R matrix object may be found."
    input_format: "Either loom, seurat, anndata or singlecellexperiment for the input format to read."
    output_format: "Either loom, seurat, anndata or singlecellexperiment for the output format."
    resolution: "Value of the resolution parameter, use a value above (below) 1.0 if you want to obtain a larger (smaller) number of communities."
    algorithm: "Algorithm for modularity optimization (1 = original Louvain algorithm; 2 = Louvain algorithm with multilevel refinement; 3 = SLM algorithm; 4 Leiden)."
    tmp_file_location: "Directory where intermediate files will be written. Specify the ABSOLUTE path."
    modularity_fxn: "Modularity function: 1 standard, 2 alternative."
    method: "Method for leiden  (defaults to matrix which is fast for small datasets). Enable method = \"igraph\" to avoid casting large data to a dense matrix."
    output_object_file: "File name in which to store serialized R object of type 'Seurat'.'"
    output_text_file: "File name in which to store text format set of clusters."
    graph_name: "Name of graph to use for the clustering algorithm."
    n_random_starts: "Number of random starts"
    n_iterations: "Maximal number of iterations per random start"
    group_singletons: "Group singletons into nearest cluster. If FALSE, assign all singletons to a \"singleton\" group"
    random_seed: "Seed of the random number generator"
  }
}