version 1.0

task ChakinFeatureDeleteFeatures {
  input {
    Int? organism_id
    Int? analysis_id
    String? name
    String? unique_name
  }
  command <<<
    chakin feature delete_features \
      ~{if defined(organism_id) then ("--organism_id " +  '"' + organism_id + '"') else ""} \
      ~{if defined(analysis_id) then ("--analysis_id " +  '"' + analysis_id + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(unique_name) then ("--uniquename " +  '"' + unique_name + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/python-chado:2.3.4--pyh3252c3a_0"
  }
  parameter_meta {
    organism_id: "organism_id filter"
    analysis_id: "analysis_id filter"
    name: "name filter"
    unique_name: "uniquename filter"
  }
  output {
    File out_stdout = stdout()
  }
}