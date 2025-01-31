version 1.0

task QpDpart {
  input {
    String? use_val_low
    String? use_val_value
    File? use_parameters_file
    Boolean? print_version_exit
    Boolean? toggle_verbose_mode
    File var_file
  }
  command <<<
    qpDpart \
      ~{var_file} \
      ~{if defined(use_val_low) then ("-L " +  '"' + use_val_low + '"') else ""} \
      ~{if defined(use_val_value) then ("-H " +  '"' + use_val_value + '"') else ""} \
      ~{if defined(use_parameters_file) then ("-p " +  '"' + use_parameters_file + '"') else ""} \
      ~{if (print_version_exit) then "-v" else ""} \
      ~{if (toggle_verbose_mode) then "-V" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/admixtools:7.0.1--h1d3628b_0"
  }
  parameter_meta {
    use_val_low: "... use <val> as low count value."
    use_val_value: "... use <val> sa high count value."
    use_parameters_file: "... use parameters from <file> ."
    print_version_exit: "... print version and exit."
    toggle_verbose_mode: "... toggle verbose mode ON."
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}