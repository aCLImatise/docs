version 1.0

task ToilMesosExecutor {
  command <<<
    _toil_mesos_executor
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}