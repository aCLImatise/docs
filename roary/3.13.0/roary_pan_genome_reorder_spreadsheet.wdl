version 1.0

task RoaryPanGenomeReorderSpreadsheet {
  input {
    String? tree_filename
    String? output_filename
    String? tree_format_newicknexusnhxsvggraphtabtreelintree
    String? input_gene_presence
    String? search_strategy_depthbreadth
    String? sorting_method_heightcreationalpharevalpha
    Boolean? verbose_output_stdout
    String pan_genome_reorder_spreadsheet
  }
  command <<<
    roary-pan_genome_reorder_spreadsheet \
      ~{pan_genome_reorder_spreadsheet} \
      ~{if defined(tree_filename) then ("-t " +  '"' + tree_filename + '"') else ""} \
      ~{if defined(output_filename) then ("-o " +  '"' + output_filename + '"') else ""} \
      ~{if defined(tree_format_newicknexusnhxsvggraphtabtreelintree) then ("-f " +  '"' + tree_format_newicknexusnhxsvggraphtabtreelintree + '"') else ""} \
      ~{if defined(input_gene_presence) then ("-s " +  '"' + input_gene_presence + '"') else ""} \
      ~{if defined(search_strategy_depthbreadth) then ("-a " +  '"' + search_strategy_depthbreadth + '"') else ""} \
      ~{if defined(sorting_method_heightcreationalpharevalpha) then ("-b " +  '"' + sorting_method_heightcreationalpharevalpha + '"') else ""} \
      ~{true="-v" false="" verbose_output_stdout}
  >>>
  parameter_meta {
    tree_filename: "tree filename []"
    output_filename: "output filename [reordered_spreadsheet.csv]"
    tree_format_newicknexusnhxsvggraphtabtreelintree: "tree format (newick/nexus/nhx/svggraph/tabtree/lintree) [newick]"
    input_gene_presence: "input gene presence and absence spreadsheet [gene_presence_absence.csv]"
    search_strategy_depthbreadth: "search strategy (depth/breadth) [depth]"
    sorting_method_heightcreationalpharevalpha: "sorting method (height/creation/alpha/revalpha) [height]"
    verbose_output_stdout: "verbose output to STDOUT"
    pan_genome_reorder_spreadsheet: ""
  }
}