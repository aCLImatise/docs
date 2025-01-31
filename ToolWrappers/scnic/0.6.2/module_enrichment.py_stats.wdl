version 1.0

task ModuleEnrichmentpyStats {
  input {
    String? modules
    String? correl_s
  }
  command <<<
    module_enrichment_py stats \
      ~{if defined(modules) then ("--modules " +  '"' + modules + '"') else ""} \
      ~{if defined(correl_s) then ("--correls " +  '"' + correl_s + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/scnic:0.6.2--py_0"
  }
  parameter_meta {
    modules: ""
    correl_s: ""
  }
  output {
    File out_stdout = stdout()
  }
}