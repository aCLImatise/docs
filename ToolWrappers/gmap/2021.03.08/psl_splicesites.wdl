version 1.0

task PslSplicesites {
  input {
    Boolean? more_options
    Boolean? options
  }
  command <<<
    psl_splicesites \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gmap:2021.03.08--pl5262h36cd882_0"
  }
  parameter_meta {
    more_options: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}