version 1.0

task BasenjiTrain1py {
  command <<<
    basenji_train1_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}