version 1.0

task Convert2blastmask {
  command <<<
    convert2blastmask
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}