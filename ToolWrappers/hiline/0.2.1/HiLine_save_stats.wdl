version 1.0

task HiLineSavestats {
  input {
    String location_dot
  }
  command <<<
    HiLine save_stats \
      ~{location_dot}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hiline:0.2.1--py38hc9558a2_0"
  }
  parameter_meta {
    location_dot: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}