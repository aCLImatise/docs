version 1.0

task PretextMapsse41 {
  input {
    Boolean? sort_order
    String? filter_include
    Boolean? filter_exclude
  }
  command <<<
    PretextMap_sse41 \
      ~{if (sort_order) then "--sortorder" else ""} \
      ~{if defined(filter_include) then ("--filterInclude " +  '"' + filter_include + '"') else ""} \
      ~{if (filter_exclude) then "--filterExclude" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pretextmap:0.1.5--h7d875b9_0"
  }
  parameter_meta {
    sort_order: "({descend}, ascend)"
    filter_include: "\\\"seq_ [, seq_]*\\\""
    filter_exclude: "\\\"seq_ [, seq_]*\\\")"
  }
  output {
    File out_stdout = stdout()
  }
}