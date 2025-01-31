version 1.0

task ChakinPhylogenyGeneFamilies {
  input {
    String? family_name
    Boolean? nuke
    String options
  }
  command <<<
    chakin phylogeny gene_families \
      ~{options} \
      ~{if defined(family_name) then ("--family_name " +  '"' + family_name + '"') else ""} \
      ~{if (nuke) then "--nuke" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    family_name: "Restrict to families beginning with given prefix"
    nuke: "Removes all previous gene families data"
    options: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}