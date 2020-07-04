version 1.0

task PhyluceGenetreesSplitModelsFromGenetrees {
  input {
    String? gene_trees
    String? output_file_hold
  }
  command <<<
    phyluce_genetrees_split_models_from_genetrees \
      ~{if defined(gene_trees) then ("--genetrees " +  '"' + gene_trees + '"') else ""} \
      ~{if defined(output_file_hold) then ("--output " +  '"' + output_file_hold + '"') else ""}
  >>>
  parameter_meta {
    gene_trees: "The cloudforest genetree file containing models"
    output_file_hold: "The output file to hold the parsed substitution model data"
  }
}