version 1.0

task Gmapindex {
  command <<<
    gmapindex
  >>>
  runtime {
    docker: "quay.io/biocontainers/gmap:2021.02.22--pl526h2f06484_0"
  }
  output {
    File out_stdout = stdout()
  }
}