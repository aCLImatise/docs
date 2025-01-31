version 1.0

task EsltranslateSeqfile {
  input {
    Boolean? options
  }
  command <<<
    esl_translate seqfile \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}