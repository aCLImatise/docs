version 1.0

task RunIceIterative2py {
  command <<<
    run_IceIterative2_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0"
  }
  output {
    File out_stdout = stdout()
  }
}