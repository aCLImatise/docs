version 1.0

task PysradbSrpToSrx {
  input {
    String? db
    String? save_to
    Boolean? detailed
    Boolean? desc
    Boolean? expand
  }
  command <<<
    pysradb srp-to-srx \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(save_to) then ("--saveto " +  '"' + save_to + '"') else ""} \
      ~{true="--detailed" false="" detailed} \
      ~{true="--desc" false="" desc} \
      ~{true="--expand" false="" expand}
  >>>
  parameter_meta {
    db: "Path to SRAmetadb.sqlite file"
    save_to: "Save output to file"
    detailed: "Output additional columns: [sample_accession (SRS), run_accession (SRR), experiment_alias (GSM), sample_alias (GSM_), run_alias (GSM_r)', study_alias (GSE)]"
    desc: "Should sample_attribute be included"
    expand: "Should sample_attribute be expanded"
  }
}