version 1.0

task Makehist {
  input {
    File? distfile
    String? option
    String run_name
  }
  command <<<
    makehist \
      ~{run_name} \
      ~{if defined(distfile) then ("-distfile " +  '"' + distfile + '"') else ""} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    distfile: ".dist    Score file to read (required)."
    option: ""
    run_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}