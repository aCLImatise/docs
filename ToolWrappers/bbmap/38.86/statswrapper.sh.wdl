version 1.0

task Statswrappersh {
  input {
    String in
  }
  command <<<
    statswrapper_sh \
      ~{in}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}