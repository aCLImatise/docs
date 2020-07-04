version 1.0

task PhyluceSnpGetDbsnpVariabilityForAllUces {
  input {
    String? dbsnp
    String? xml
    String? the_output_file
    String? dupe_file
  }
  command <<<
    phyluce_snp_get_dbsnp_variability_for_all_uces \
      ~{if defined(dbsnp) then ("--dbsnp " +  '"' + dbsnp + '"') else ""} \
      ~{if defined(xml) then ("--xml " +  '"' + xml + '"') else ""} \
      ~{if defined(the_output_file) then ("--output " +  '"' + the_output_file + '"') else ""} \
      ~{if defined(dupe_file) then ("--dupefile " +  '"' + dupe_file + '"') else ""}
  >>>
  parameter_meta {
    dbsnp: "CSV input from dbSNP giving SNP positions within UCE"
    xml: "The XML file holiding locus data from dbSNP"
    the_output_file: "The output file"
    dupe_file: "The path to a lastz file of lastz-against-self results"
  }
}