version 1.0

task ThermoFisherCommonCoreRawFileReaderdll {
  command <<<
    ThermoFisher_CommonCore_RawFileReader_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}