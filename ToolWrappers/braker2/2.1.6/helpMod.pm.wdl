version 1.0

task HelpModpm {
  command <<<
    helpMod_pm
  >>>
  runtime {
    docker: "quay.io/biocontainers/braker2:2.1.6--hdfd78af_1"
  }
  output {
    File out_stdout = stdout()
  }
}