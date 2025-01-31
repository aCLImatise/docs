version 1.0

task Skivi {
  input {
    File image_file
  }
  command <<<
    skivi \
      ~{image_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    image_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}