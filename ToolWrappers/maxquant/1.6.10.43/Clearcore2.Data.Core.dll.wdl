version 1.0

task Clearcore2DataCoredll {
  command <<<
    Clearcore2_Data_Core_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}