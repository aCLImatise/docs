version 1.0

task GotreeGenerateYuletree {
  input {
    Int? nb_tips
    String? format
    Int? nb_trees
    Int? number_generate_default
    Boolean? rooted
    Int? seed
    Int? threads
  }
  command <<<
    gotree generate yuletree \
      ~{if defined(nb_tips) then ("--nbtips " +  '"' + nb_tips + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(nb_trees) then ("--nbtrees " +  '"' + nb_trees + '"') else ""} \
      ~{if defined(number_generate_default) then ("--output " +  '"' + number_generate_default + '"') else ""} \
      ~{if (rooted) then "--rooted" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    nb_tips: "Number of tips/leaves of the tree to generate (default 10)"
    format: "Input tree format (newick, nexus, or phyloxml) (default \\\"newick\\\")"
    nb_trees: "Number of trees to generate (default 1)"
    number_generate_default: "Number of tips of the tree to generate (default \\\"stdout\\\")"
    rooted: "Generate rooted trees"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (Max=8) (default 1)"
  }
  output {
    File out_stdout = stdout()
  }
}