version 1.0

task TestDependenciespl {
  command <<<
    test_dependencies_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}