version 1.0

task GetFLAccspl {
  command <<<
    get_FL_accs_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}