version 1.0

task EnaGroupGetpy {
  command <<<
    enaGroupGet_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}