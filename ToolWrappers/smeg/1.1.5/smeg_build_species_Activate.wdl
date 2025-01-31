version 1.0

task SmegBuildSpeciesActivate {
  input {
    Boolean? _is_required
  }
  command <<<
    smeg build_species Activate \
      ~{if (_is_required) then "-g" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    _is_required: "[option] is required"
  }
  output {
    File out_stdout = stdout()
  }
}