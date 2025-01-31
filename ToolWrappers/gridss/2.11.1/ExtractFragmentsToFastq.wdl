version 1.0

task ExtractFragmentsToFastq {
  input {
    Boolean? std_help
  }
  command <<<
    ExtractFragmentsToFastq \
      ~{if (std_help) then "--stdhelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gridss:2.11.1--hdfd78af_1"
  }
  parameter_meta {
    std_help: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
  }
  output {
    File out_stdout = stdout()
  }
}