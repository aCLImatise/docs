version 1.0

task CruxMakepinIncluded {
  input {
    String crux
    String make_pin
    String target_input
  }
  command <<<
    crux make_pin included_ \
      ~{crux} \
      ~{make_pin} \
      ~{target_input}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    crux: ""
    make_pin: ""
    target_input: ""
  }
  output {
    File out_stdout = stdout()
  }
}