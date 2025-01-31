version 1.0

task ParsecWorkflowsGetInvocations {
  input {
    String workflow_id
  }
  command <<<
    parsec workflows get_invocations \
      ~{workflow_id}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    workflow_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}