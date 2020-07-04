version 1.0

task SeqtkMutfa {
  input {
    String in_dot_fa
    String in_dot_snp
  }
  command <<<
    seqtk mutfa \
      ~{in_dot_fa} \
      ~{in_dot_snp}
  >>>
  parameter_meta {
    in_dot_fa: ""
    in_dot_snp: ""
  }
}