version 1.0

task Gmapindex {
  command <<<
    gmapindex
  >>>
  runtime {
    docker: "quay.io/biocontainers/gmap:2021.03.08--pl5262h36cd882_0"
  }
  output {
    File out_stdout = stdout()
  }
}