version 1.0

task ArrowGroupsDeleteGroup {
  input {
    String group
  }
  command <<<
    arrow groups delete_group \
      ~{group}
  >>>
  runtime {
    docker: "quay.io/biocontainers/apollo:4.2.10--pyh3252c3a_0"
  }
  parameter_meta {
    group: ""
  }
  output {
    File out_stdout = stdout()
  }
}