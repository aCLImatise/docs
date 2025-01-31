version 1.0

task FalconcCircrandomize {
  input {
    Boolean? help_syntax
    Boolean? _input_string
    File? _output_string
    Boolean? seed_set_seed
  }
  command <<<
    falconc circ_randomize \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_input_string) then "-i" else ""} \
      ~{if (_output_string) then "-o" else ""} \
      ~{if (seed_set_seed) then "-s" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _input_string: "=, --input=   string  REQUIRED  fasta file of circular sequences"
    _output_string: "=, --output=  string  REQUIRED  fasta file output"
    seed_set_seed: "=, --seed=    int64   0         set seed, if non-zero"
  }
  output {
    File out_stdout = stdout()
    File out__output_string = "${in__output_string}"
  }
}