version 1.0

task PyomoPython {
  input {
    String at_call_aside
  }
  command <<<
    pyomo_python \
      ~{at_call_aside}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    at_call_aside: "File \\\"/usr/local/lib/python3.4/site-packages/pkg_resources/__init__.py\\\", line 2962, in _call_aside"
  }
  output {
    File out_stdout = stdout()
  }
}