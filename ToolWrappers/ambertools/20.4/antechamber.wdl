version 1.0

task Antechamber {
  command <<<
    antechamber
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}