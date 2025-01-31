version 1.0

task RefgenieList {
  input {
    File? genome_config
    Boolean? reference_assembly_id
    String? genome
  }
  command <<<
    refgenie list \
      ~{genome} \
      ~{if defined(genome_config) then ("--genome-config " +  '"' + genome_config + '"') else ""} \
      ~{if (reference_assembly_id) then "-g" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/refgenie:0.9.3--py_0"
  }
  parameter_meta {
    genome_config: "Path to local genome configuration file. Optional if\\nREFGENIE environment variable is set."
    reference_assembly_id: "[GENOME [GENOME ...]], --genome [GENOME [GENOME ...]]\\nReference assembly ID, e.g. mm10.\\n"
    genome: ""
  }
  output {
    File out_stdout = stdout()
  }
}