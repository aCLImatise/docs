version 1.0

task OMetaMDSAnalysisWithMetadata.R {
  input {
    String? output_file_prefix
    String? distance
    String? mapping_variable
    String? title
    String script_do_tr
    String input_matrix
    String metadata
  }
  command <<<
    o-metaMDS-analysis-with-metadata.R \
      ~{script_do_tr} \
      ~{input_matrix} \
      ~{metadata} \
      ~{if defined(output_file_prefix) then ("--output_file_prefix " +  '"' + output_file_prefix + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(mapping_variable) then ("--mapping_variable " +  '"' + mapping_variable + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""}
  >>>
  parameter_meta {
    output_file_prefix: "Output file prefix [default \"unknown\"]"
    distance: "Distance metric [default \"horn\"]"
    mapping_variable: "Column in the metadata for sample mapping"
    title: "Title for the output figure [default '(unknown title)']"
    script_do_tr: ""
    input_matrix: ""
    metadata: ""
  }
}