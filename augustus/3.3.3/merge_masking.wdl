version 1.0

task MergeMasking.pl {
  input {
    File file_one_dot_fa
    File file_two_dot_fa
    File file_three_dot_fa
  }
  command <<<
    merge_masking.pl \
      ~{file_one_dot_fa} \
      ~{file_two_dot_fa} \
      ~{file_three_dot_fa}
  >>>
  parameter_meta {
    file_one_dot_fa: "softmasked fasta file"
    file_two_dot_fa: "softmasked second fasta file"
    file_three_dot_fa: "output softmasked third fasta file"
  }
}