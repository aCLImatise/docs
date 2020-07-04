version 1.0

task PhylorankMarkTree {
  input {
    String? thresholds
    Int? min_support
    Boolean? only_named_clades
    Int? min_length
    Boolean? no_percentile
    Boolean? no_relative_divergence
    Boolean? no_prediction
    String input_tree
    String output_tree
  }
  command <<<
    phylorank mark_tree \
      ~{input_tree} \
      ~{output_tree} \
      ~{if defined(thresholds) then ("--thresholds " +  '"' + thresholds + '"') else ""} \
      ~{if defined(min_support) then ("--min_support " +  '"' + min_support + '"') else ""} \
      ~{true="--only_named_clades" false="" only_named_clades} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""} \
      ~{true="--no_percentile" false="" no_percentile} \
      ~{true="--no_relative_divergence" false="" no_relative_divergence} \
      ~{true="--no_prediction" false="" no_prediction}
  >>>
  parameter_meta {
    thresholds: "relative divergence thresholds for taxonomic ranks (default: {\"d\": 0.33, \"p\": 0.56, \"c\": 0.65, \"o\": 0.78, \"f\": 0.92, \"g\": 0.99})"
    min_support: "only mark nodes above the specified support value (default=0) (default: 0)"
    only_named_clades: "only mark nodes with an existing label"
    min_length: "only mark nodes with a parent branch above the specified length (default=0) (default: 0.0)"
    no_percentile: "do not mark with percentile information"
    no_relative_divergence: "do not mark with relative divergence information"
    no_prediction: "do not mark with predicted rank information"
    input_tree: "input tree to mark"
    output_tree: "output tree with assigned taxonomic ranks"
  }
}