version 1.0

task AmrReport {
  command <<<
    amr_report
  >>>
  runtime {
    docker: "quay.io/biocontainers/ncbi-amrfinderplus:3.10.1--h671e170_0"
  }
  output {
    File out_stdout = stdout()
  }
}