version 1.0

task BasenjiTestSpecificitypy {
  command <<<
    basenji_test_specificity_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}