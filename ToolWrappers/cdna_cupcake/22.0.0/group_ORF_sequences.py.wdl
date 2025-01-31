version 1.0

task GroupORFSequencespy {
  input {
    Boolean? is_p_bid
    String de_duplicate
    String orf
    String faa
    File file_dot
    String input_faa
    String output_prefix
  }
  command <<<
    group_ORF_sequences_py \
      ~{de_duplicate} \
      ~{orf} \
      ~{faa} \
      ~{file_dot} \
      ~{input_faa} \
      ~{output_prefix} \
      ~{if (is_p_bid) then "--is_pbid" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0"
  }
  parameter_meta {
    is_p_bid: ""
    de_duplicate: ""
    orf: ""
    faa: ""
    file_dot: ""
    input_faa: ""
    output_prefix: ""
  }
  output {
    File out_stdout = stdout()
  }
}