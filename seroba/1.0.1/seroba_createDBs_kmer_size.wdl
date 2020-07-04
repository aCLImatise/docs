version 1.0

task SerobaCreateDBsKmerSize {
  input {
    String se_rob_a
    String created_bs
    String database_dir
    String km_er_size
  }
  command <<<
    seroba createDBs kmer_size \
      ~{se_rob_a} \
      ~{created_bs} \
      ~{database_dir} \
      ~{km_er_size}
  >>>
  parameter_meta {
    se_rob_a: ""
    created_bs: ""
    database_dir: ""
    km_er_size: ""
  }
}