version 1.0

task MegalodonExtrasModifiedBasesUpdateDatabase {
  input {
    Directory? new_db
  }
  command <<<
    megalodon_extras modified_bases update_database \
      ~{if defined(new_db) then ("--new-db " +  '"' + new_db + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/megalodon:2.3.1--py38h4a8c8d9_0"
  }
  parameter_meta {
    new_db: "Output data base name. Should replace\\nper_read_modified_base_calls.db in megalodon results\\ndirectory in order to process further. Default:\\nmegalodon_mods.db\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_new_db = "${in_new_db}"
  }
}