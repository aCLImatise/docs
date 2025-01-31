version 1.0

task EslshuffleMsafile {
  input {
    Boolean? g
    Boolean? a
    String esl_shuffle
    String seq_file
  }
  command <<<
    esl_shuffle msafile \
      ~{esl_shuffle} \
      ~{seq_file} \
      ~{if (g) then "-G" else ""} \
      ~{if (a) then "-A" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    g: ""
    a: ""
    esl_shuffle: ""
    seq_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}