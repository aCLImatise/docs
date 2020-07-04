version 1.0

task BioformatsSnpeff2bed {
  input {
    Boolean? bed_three
    Boolean? v
    String vcf_file
    String bed_file
  }
  command <<<
    bioformats snpeff2bed \
      ~{vcf_file} \
      ~{bed_file} \
      ~{true="--bed3" false="" bed_three} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    bed_three: "convert to the BED3 format"
    v: ""
    vcf_file: "an snpEff-annotated VCF file"
    bed_file: "the output BED file of annotated variants"
  }
}