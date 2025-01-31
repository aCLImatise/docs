version 1.0

task ArrowAnnotationsDeleteDbxref {
  input {
    String? organism
    String? sequence
    String feature_id
    String db
    String accession
  }
  command <<<
    arrow annotations delete_dbxref \
      ~{feature_id} \
      ~{db} \
      ~{accession} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    organism: "Organism Common Name"
    sequence: "Sequence Name"
    feature_id: ""
    db: ""
    accession: ""
  }
  output {
    File out_stdout = stdout()
  }
}