version 1.0

task _cai {
  input {
    Boolean? c_file
  }
  command <<<
    _cai \
      ~{true="-cfile" false="" c_file}
  >>>
  parameter_meta {
    c_file: "codon      [Eyeast_cai.cut] Codon usage table name"
  }
}