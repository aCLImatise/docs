version 1.0

task WiggleToArrayTreepy {
  command <<<
    wiggle_to_array_tree_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}