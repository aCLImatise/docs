version 1.0

task PypgatkCliGaps {
  input {
    String p_ypg_atk_cli
    String var_command
    String? args
  }
  command <<<
    pypgatk_cli gaps \
      ~{p_ypg_atk_cli} \
      ~{var_command} \
      ~{args}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pypgatk:0.0.19--py_0"
  }
  parameter_meta {
    p_ypg_atk_cli: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}