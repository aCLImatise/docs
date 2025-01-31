version 1.0

task FcQuiverpy {
  input {
    String? target
    String? logging_config_fn
  }
  command <<<
    fc_quiver_py \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(logging_config_fn) then ("--logging-config-fn " +  '"' + logging_config_fn + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    target: "target pipeline: clr=regular; ccs=only ccs data (default: clr)"
    logging_config_fn: "Optional standard Python logging config (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}