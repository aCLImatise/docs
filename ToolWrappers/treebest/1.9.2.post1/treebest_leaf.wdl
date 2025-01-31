version 1.0

task TreebestLeaf {
  input {
    String nh_tree
  }
  command <<<
    treebest leaf \
      ~{nh_tree}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    nh_tree: ""
  }
  output {
    File out_stdout = stdout()
  }
}