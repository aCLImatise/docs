version 1.0

task Ps2pdf12Ps2pdfwr {
  command <<<
    ps2pdf12 ps2pdfwr
  >>>
  output {
    File out_stdout = stdout()
  }
}