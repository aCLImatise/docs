version 1.0

task RagtagScaffoldpy {
  command <<<
    ragtag_scaffold_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/ragtag:1.1.0--pyh7b7c402_0"
  }
  output {
    File out_stdout = stdout()
  }
}