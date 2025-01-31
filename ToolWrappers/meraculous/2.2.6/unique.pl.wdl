version 1.0

task Uniquepl {
  input {
    File input_file
  }
  command <<<
    unique_pl \
      ~{input_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}