version 1.0

task PlotCOGR {
  command <<<
    Plot_COG_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/pgcgap:1.0.27--py37pl526_0"
  }
  output {
    File out_stdout = stdout()
  }
}