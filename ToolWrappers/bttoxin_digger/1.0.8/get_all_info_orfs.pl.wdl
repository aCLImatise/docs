version 1.0

task GetAllInfoOrfspl {
  command <<<
    get_all_info_orfs_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/bttoxin_digger:1.0.8--0"
  }
  output {
    File out_stdout = stdout()
  }
}