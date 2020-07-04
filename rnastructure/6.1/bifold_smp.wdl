version 1.0

task BifoldSmp {
  input {
    String bifold
    String seq_file_one
    String seq_file_two
    String ct_file
  }
  command <<<
    bifold-smp \
      ~{bifold} \
      ~{seq_file_one} \
      ~{seq_file_two} \
      ~{ct_file}
  >>>
  parameter_meta {
    bifold: ""
    seq_file_one: ""
    seq_file_two: ""
    ct_file: ""
  }
}