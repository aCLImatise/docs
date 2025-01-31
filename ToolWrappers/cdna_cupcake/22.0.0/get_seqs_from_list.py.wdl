version 1.0

task GetSeqsFromListpy {
  input {
    Boolean? partial
    Boolean? exclude
    String list_filename
  }
  command <<<
    get_seqs_from_list_py \
      ~{list_filename} \
      ~{if (partial) then "--partial" else ""} \
      ~{if (exclude) then "--exclude" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0"
  }
  parameter_meta {
    partial: "OK if seq IDs only match the beginning"
    exclude: "Output sequences NOT in the list, default OFF"
    list_filename: "List of sequence IDs to extract"
  }
  output {
    File out_stdout = stdout()
  }
}