version 1.0

task BaseDistributionAtReadPosition {
  input {
    Int? default_g
    String? final_command_line
    Boolean? std_help
    String null_dot
  }
  command <<<
    BaseDistributionAtReadPosition \
      ~{null_dot} \
      ~{if defined(default_g) then ("-m " +  '"' + default_g + '"') else ""} \
      ~{if defined(final_command_line) then ("-v " +  '"' + final_command_line + '"') else ""} \
      ~{if (std_help) then "--stdhelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dropseq_tools:2.4.0--0"
  }
  parameter_meta {
    default_g: "(default 4g)"
    final_command_line: "final command line before executing"
    std_help: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    null_dot: "TAG=String                    Tag to gather statistics on.  If this is set, the read number is ignored.  Default value:"
  }
  output {
    File out_stdout = stdout()
  }
}