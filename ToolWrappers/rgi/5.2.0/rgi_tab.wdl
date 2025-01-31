version 1.0

task RgiTab {
  input {
    File? a_file
  }
  command <<<
    rgi tab \
      ~{if defined(a_file) then ("--afile " +  '"' + a_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rgi:5.2.0--pyhdfd78af_0"
  }
  parameter_meta {
    a_file: "must be a rgi json result file\\n"
  }
  output {
    File out_stdout = stdout()
  }
}