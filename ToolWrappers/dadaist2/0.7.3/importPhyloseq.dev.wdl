version 1.0

task ImportPhyloseqdev {
  command <<<
    importPhyloseq_dev
  >>>
  runtime {
    docker: "quay.io/biocontainers/dadaist2:0.7.3--0"
  }
  output {
    File out_stdout = stdout()
  }
}