version 1.0

task GotreeUnroot {
  input {
    String? input_tree_default
    File? collapsed_tree_output
    String? format
    Int? seed
    Int? threads
  }
  command <<<
    gotree unroot \
      ~{if defined(input_tree_default) then ("--input " +  '"' + input_tree_default + '"') else ""} \
      ~{if defined(collapsed_tree_output) then ("--output " +  '"' + collapsed_tree_output + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_tree_default: "Input tree (default \\\"stdin\\\")"
    collapsed_tree_output: "Collapsed tree output file (default \\\"stdout\\\")"
    format: "Input tree format (newick, nexus, or phyloxml) (default \\\"newick\\\")"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (Max=8) (default 1)"
  }
  output {
    File out_stdout = stdout()
    File out_collapsed_tree_output = "${in_collapsed_tree_output}"
  }
}