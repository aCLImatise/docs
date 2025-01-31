version 1.0

task Go2owlpl {
  input {
    Boolean? obo_input_file
    String usage
  }
  command <<<
    go2owl_pl \
      ~{usage} \
      ~{if (obo_input_file) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    obo_input_file: "OBO input file"
    usage: ": go2owl.pl [options]"
  }
  output {
    File out_stdout = stdout()
  }
}