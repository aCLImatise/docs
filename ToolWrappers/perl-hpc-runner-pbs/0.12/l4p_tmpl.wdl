version 1.0

task L4ptmpl {
  command <<<
    l4p_tmpl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}