version 1.0

task ExtractMiRNAspl {
  input {
    String e_dot_gdot
    String perl
  }
  command <<<
    extract_miRNAs_pl \
      ~{e_dot_gdot} \
      ~{perl}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    e_dot_gdot: ""
    perl: ""
  }
  output {
    File out_stdout = stdout()
  }
}