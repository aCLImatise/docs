version 1.0

task GcloudComponentsReinstall {
  input {
    String? optional
    String? flags
  }
  command <<<
    gcloud components reinstall \
      ~{optional} \
      ~{flags}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    optional: ""
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}