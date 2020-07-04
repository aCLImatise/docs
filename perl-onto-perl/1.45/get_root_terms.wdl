version 1.0

task GetRootTerms.pl {
  input {
    Boolean? obo_input_file
  }
  command <<<
    get_root_terms.pl \
      ~{true="-f" false="" obo_input_file}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
  }
}