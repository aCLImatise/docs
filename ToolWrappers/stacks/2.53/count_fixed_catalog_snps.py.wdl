version 1.0

task CountFixedCatalogSnpspy {
  command <<<
    count_fixed_catalog_snps_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}