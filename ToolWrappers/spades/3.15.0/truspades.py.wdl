version 1.0

task Truspadespy {
  command <<<
    truspades_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/spades:3.15.0--h633aebb_0"
  }
  output {
    File out_stdout = stdout()
  }
}