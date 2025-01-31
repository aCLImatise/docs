version 1.0

task ChakinOrganismAddOrganism {
  input {
    String? comment
    String genus
    String species
    String common
    String abbr
  }
  command <<<
    chakin organism add_organism \
      ~{genus} \
      ~{species} \
      ~{common} \
      ~{abbr} \
      ~{if defined(comment) then ("--comment " +  '"' + comment + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/python-chado:2.3.4--pyh3252c3a_0"
  }
  parameter_meta {
    comment: "A comment / description"
    genus: ""
    species: ""
    common: ""
    abbr: ""
  }
  output {
    File out_stdout = stdout()
  }
}