version 1.0

task BioformatsVcfgeno2bed {
  input {
    String? individuals
    Boolean? v
    String vcf_file
    String output_file
  }
  command <<<
    bioformats vcfgeno2bed \
      ~{vcf_file} \
      ~{output_file} \
      ~{if defined(individuals) then ("--individuals " +  '"' + individuals + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    individuals: "a file with the list of individuals to be considered for genotype counting"
    v: ""
    vcf_file: "a VCF file"
    output_file: "the output BED3+ file of genotype counts"
  }
}