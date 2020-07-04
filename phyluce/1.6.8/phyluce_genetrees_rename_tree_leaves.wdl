version 1.0

task PhyluceGenetreesRenameTreeLeaves {
  input {
    String? input_tree_file
    String? config
    String? output_tree_file
    String? section
    Boolean? order
    String? input_format
    String? output_format
    String? re_root
    String? do_not_preserve_spaces
  }
  command <<<
    phyluce_genetrees_rename_tree_leaves \
      ~{if defined(input_tree_file) then ("--input " +  '"' + input_tree_file + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(output_tree_file) then ("--output " +  '"' + output_tree_file + '"') else ""} \
      ~{if defined(section) then ("--section " +  '"' + section + '"') else ""} \
      ~{true="--order" false="" order} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(re_root) then ("--reroot " +  '"' + re_root + '"') else ""} \
      ~{if defined(do_not_preserve_spaces) then ("--do-not-preserve-spaces " +  '"' + do_not_preserve_spaces + '"') else ""}
  >>>
  parameter_meta {
    input_tree_file: "The input tree file"
    config: "A python config file mapping one name to another"
    output_tree_file: "The output tree file"
    section: "The section of the conf file to use"
    order: "{left:right,right:left} Map the names as entered or in reverse"
    input_format: "The tree file format"
    output_format: "The tree file format"
    re_root: "The resulting name to root the tree on"
    do_not_preserve_spaces: "Do not retain spaces in output names"
  }
}