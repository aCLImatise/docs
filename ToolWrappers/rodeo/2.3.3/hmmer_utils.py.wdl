version 1.0

task HmmerUtilspy {
  command <<<
    hmmer_utils_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/rodeo:2.3.3--0"
  }
  output {
    File out_stdout = stdout()
  }
}