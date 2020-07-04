version 1.0

task KaijuAddTaxonNames {
  input {
    File? name_input_file
    File? name_output_file
    File? name_nodesdmp_file
    File? name_namesdmp_file
    Boolean? unclassified_reads_contained
    Boolean? print_full_taxon
    Boolean? print_taxon_path
    Boolean? enable_verbose_output
  }
  command <<<
    kaiju-addTaxonNames \
      ~{if defined(name_input_file) then ("-i " +  '"' + name_input_file + '"') else ""} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(name_nodesdmp_file) then ("-t " +  '"' + name_nodesdmp_file + '"') else ""} \
      ~{if defined(name_namesdmp_file) then ("-n " +  '"' + name_namesdmp_file + '"') else ""} \
      ~{true="-u" false="" unclassified_reads_contained} \
      ~{true="-p" false="" print_full_taxon} \
      ~{true="-r" false="" print_taxon_path} \
      ~{true="-v" false="" enable_verbose_output}
  >>>
  parameter_meta {
    name_input_file: "Name of input file"
    name_output_file: "Name of output file. If not specified, output will be printed to STDOUT."
    name_nodesdmp_file: "Name of nodes.dmp file"
    name_namesdmp_file: "Name of names.dmp file."
    unclassified_reads_contained: "Unclassified reads are not contained in the output."
    print_full_taxon: "Print full taxon path."
    print_taxon_path: "Print taxon path containing only ranks specified by a comma-separated list, for example: superkingdom,phylum,class,order,family,genus,species"
    enable_verbose_output: "Enable verbose output."
  }
}