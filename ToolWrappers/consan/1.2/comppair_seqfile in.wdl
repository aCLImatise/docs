version 1.0

task ComppairSeqfilein {
  input {
    Boolean? options
  }
  command <<<
    comppair seqfile_in \
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