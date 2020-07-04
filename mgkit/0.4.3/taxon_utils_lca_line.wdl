version 1.0

task TaxonUtilsLcaLine {
  input {
    String? taxonomy
    File? no_lca
    Boolean? only_ranked
    String? separator
    String? input_file
    String? output_file
  }
  command <<<
    taxon-utils lca_line \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(taxonomy) then ("--taxonomy " +  '"' + taxonomy + '"') else ""} \
      ~{if defined(no_lca) then ("--no-lca " +  '"' + no_lca + '"') else ""} \
      ~{true="--only-ranked" false="" only_ranked} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""}
  >>>
  parameter_meta {
    taxonomy: "Taxonomy file  [required]"
    no_lca: "File to which write records with no LCA"
    only_ranked: "If set, only taxa that have a rank will be used in the lineageself. This is not advised for lineages such as Viruses, where the top levels have no rank"
    separator: "separator for taxon_ids (defaults to TAB)"
    input_file: ""
    output_file: ""
  }
}