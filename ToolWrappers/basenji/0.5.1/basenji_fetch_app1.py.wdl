version 1.0

task BasenjiFetchApp1py {
  command <<<
    basenji_fetch_app1_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}