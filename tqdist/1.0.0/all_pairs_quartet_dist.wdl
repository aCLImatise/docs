version 1.0

task AllPairsQuartetDist {
  input {
    String input_filename
    String? var_output
    File? filename
  }
  command <<<
    all_pairs_quartet_dist \
      ~{input_filename} \
      ~{var_output} \
      ~{filename}
  >>>
  parameter_meta {
    input_filename: ""
    var_output: ""
    filename: ""
  }
}