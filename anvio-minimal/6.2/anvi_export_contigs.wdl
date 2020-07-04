version 1.0

task AnviExportContigs {
  input {
    String? contigs_db
    Boolean? splits_mode
    File? output_file
  }
  command <<<
    anvi-export-contigs \
      ~{if defined(contigs_db) then ("--contigs-db " +  '"' + contigs_db + '"') else ""} \
      ~{true="--splits-mode" false="" splits_mode} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    contigs_db: "Anvi'o contigs database generated by 'anvi-gen- contigs'"
    splits_mode: "Export split sequences instead."
    output_file: "File path to store results."
  }
}