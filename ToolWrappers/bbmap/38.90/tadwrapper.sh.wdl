version 1.0

task Tadwrappersh {
  input {
    String in
  }
  command <<<
    tadwrapper_sh \
      ~{in}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bbmap:38.90--h1296035_0"
  }
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}