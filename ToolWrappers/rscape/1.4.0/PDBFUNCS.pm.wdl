version 1.0

task PDBFUNCSpm {
  command <<<
    PDBFUNCS_pm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}