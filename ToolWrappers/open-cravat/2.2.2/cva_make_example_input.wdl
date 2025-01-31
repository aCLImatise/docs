version 1.0

task CvaMakeexampleinput {
  input {
    Directory directory
  }
  command <<<
    cva make_example_input \
      ~{directory}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0"
  }
  parameter_meta {
    directory: "Directory to make the example input file in"
  }
  output {
    File out_stdout = stdout()
  }
}