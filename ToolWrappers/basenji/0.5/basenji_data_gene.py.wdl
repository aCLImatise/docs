version 1.0

task BasenjiDataGenepy {
  command <<<
    basenji_data_gene_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}