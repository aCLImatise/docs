version 1.0

task IdpQonvert {
  command <<<
    idpQonvert
  >>>
  runtime {
    docker: "quay.io/biocontainers/bumbershoot:3_0_20295_bfe5db0--hc9558a2_0"
  }
  output {
    File out_stdout = stdout()
  }
}