version 1.0

task NamotionReflectiondll {
  command <<<
    Namotion_Reflection_dll
  >>>
  runtime {
    docker: "quay.io/biocontainers/thermorawfileparser:1.3.3--ha8f3691_1"
  }
  output {
    File out_stdout = stdout()
  }
}