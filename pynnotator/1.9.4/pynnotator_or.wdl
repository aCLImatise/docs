version 1.0

task PynnotatorOr {
  input {
    String? vcf_file_annotated
    String? hg_genome_build
    String options
  }
  command <<<
    pynnotator or \
      ~{options} \
      ~{if defined(vcf_file_annotated) then ("-i " +  '"' + vcf_file_annotated + '"') else ""} \
      ~{if defined(hg_genome_build) then ("-b " +  '"' + hg_genome_build + '"') else ""}
  >>>
  parameter_meta {
    vcf_file_annotated: "a VCF file to be annotated"
    hg_genome_build: "or hg38  The genome build you want to use"
    options: "install test"
  }
}