version 1.0

task AffiliationsStatTplhtml {
  command <<<
    affiliations_stat_tpl_html
  >>>
  runtime {
    docker: "quay.io/biocontainers/frogs:3.2.0--py37_0"
  }
  output {
    File out_stdout = stdout()
  }
}