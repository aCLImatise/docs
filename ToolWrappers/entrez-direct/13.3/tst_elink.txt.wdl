version 1.0

task Tstelinktxt {
  command <<<
    tst_elink_txt
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}