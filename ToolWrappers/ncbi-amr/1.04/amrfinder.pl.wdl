version 1.0

task Amrfinderpl {
  input {
    String? update_data
    Directory? database
    File? tabfile_output_stdout
    String? quiet
    String? protein
    String? genomic_sequence_search
    Int? minimum_proportion_identical
    Int? minimum_coverage_reference
    Int? translation_table_meaning
    String hmmer
  }
  command <<<
    amrfinder_pl \
      ~{hmmer} \
      ~{if defined(update_data) then ("--update_data " +  '"' + update_data + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(tabfile_output_stdout) then ("--output " +  '"' + tabfile_output_stdout + '"') else ""} \
      ~{if defined(quiet) then ("--quiet " +  '"' + quiet + '"') else ""} \
      ~{if defined(protein) then ("--protein " +  '"' + protein + '"') else ""} \
      ~{if defined(genomic_sequence_search) then ("-n " +  '"' + genomic_sequence_search + '"') else ""} \
      ~{if defined(minimum_proportion_identical) then ("-i " +  '"' + minimum_proportion_identical + '"') else ""} \
      ~{if defined(minimum_coverage_reference) then ("-c " +  '"' + minimum_coverage_reference + '"') else ""} \
      ~{if defined(translation_table_meaning) then ("-t " +  '"' + translation_table_meaning + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    update_data: "AMRFinder database by downloading latest version\\nfrom the NCBI ftp site"
    database: "Directory containing the AMR database"
    tabfile_output_stdout: "tabfile output to this file instead of STDOUT"
    quiet: "'t print status messages to STDERR"
    protein: "Amino-acid sequences to search using BLASTP and"
    genomic_sequence_search: "genomic sequence to search using blastx"
    minimum_proportion_identical: "Minimum proportion identical translated AA residues"
    minimum_coverage_reference: "Minimum coverage of reference protein sequence for\\na \\\"BLASTX\\\" match vs. a \\\"PARTIALX\\\" match"
    translation_table_meaning: "Translation table for blastx, for options and their meaning see:\\nhttps://www.ncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi\\n"
    hmmer: "-g <gff> GFF file indicating genomic location for proteins in -p <protein>"
  }
  output {
    File out_stdout = stdout()
    File out_tabfile_output_stdout = "${in_tabfile_output_stdout}"
  }
}