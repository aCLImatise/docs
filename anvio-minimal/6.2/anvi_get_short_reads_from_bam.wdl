version 1.0

task AnviGetShortReadsFromBam {
  input {
    String? profile_db
    String? contigs_db
    String? collection_name
    String? bin_id
    File? bin_ids_file
    File? output_file
    File? output_file_prefix
    Boolean? gzip_output
    Boolean? split_r_one_and_r_two
  }
  command <<<
    anvi-get-short-reads-from-bam \
      ~{if defined(profile_db) then ("--profile-db " +  '"' + profile_db + '"') else ""} \
      ~{if defined(contigs_db) then ("--contigs-db " +  '"' + contigs_db + '"') else ""} \
      ~{if defined(collection_name) then ("--collection-name " +  '"' + collection_name + '"') else ""} \
      ~{if defined(bin_id) then ("--bin-id " +  '"' + bin_id + '"') else ""} \
      ~{if defined(bin_ids_file) then ("--bin-ids-file " +  '"' + bin_ids_file + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(output_file_prefix) then ("--output-file-prefix " +  '"' + output_file_prefix + '"') else ""} \
      ~{true="--gzip-output" false="" gzip_output} \
      ~{true="--split-R1-and-R2" false="" split_r_one_and_r_two}
  >>>
  parameter_meta {
    profile_db: "Anvi'o profile database"
    contigs_db: "Anvi'o contigs database generated by 'anvi-gen- contigs'"
    collection_name: "Collection name."
    bin_id: "Bin name you are interested in."
    bin_ids_file: "Text file for bins (each line should be a unique bin id)."
    output_file: "File path to store results."
    output_file_prefix: "A prefix to be used while naming the output files (no file type extensions please; just a prefix)."
    gzip_output: "When declared, output file(s) will be gzip compressed and the extension `.gz` will be added."
    split_r_one_and_r_two: "When declared, this program outputs 3 FASTA files for paired-end reads: one for R1, one for R2, and one for unpaired reads."
  }
}