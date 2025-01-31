version 1.0

task PyrpipeDiagnosticReport {
  input {
    File? file_default_same
    Boolean? summary
    String? report_output_type
    String? report_options_default
    Boolean? verbose
    String log_file
  }
  command <<<
    pyrpipe_diagnostic report \
      ~{log_file} \
      ~{if defined(file_default_same) then ("-o " +  '"' + file_default_same + '"') else ""} \
      ~{if (summary) then "--summary" else ""} \
      ~{if defined(report_output_type) then ("-e " +  '"' + report_output_type + '"') else ""} \
      ~{if defined(report_options_default) then ("-c " +  '"' + report_options_default + '"') else ""} \
      ~{if (verbose) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pyrpipe:0.0.5--py_0"
  }
  parameter_meta {
    file_default_same: "out file default: same as input logfile"
    summary: "Print quick summary and exit"
    report_output_type: "report output type: [md,pdf,html] default: pdf"
    report_options_default: "Report options [(f)ull,fa(i)l,(p)ass] default: f"
    verbose: "verbose"
    log_file: "The log file generated by pyrpipe"
  }
  output {
    File out_stdout = stdout()
  }
}