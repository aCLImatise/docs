version 1.0

task SvtoolsVcfpaste {
  input {
    File? vcf_list
    String? master
    String? tempdir
    Boolean? sum_quals
  }
  command <<<
    svtools vcfpaste \
      ~{if defined(vcf_list) then ("--vcf-list " +  '"' + vcf_list + '"') else ""} \
      ~{if defined(master) then ("--master " +  '"' + master + '"') else ""} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""} \
      ~{true="--sum-quals" false="" sum_quals}
  >>>
  parameter_meta {
    vcf_list: "file containing a line-delimited list of VCF files to paste (required)"
    master: "VCF file to set first 8 columns of variant info (otherwise first file in --vcf-list)"
    tempdir: "Directory for temp file downloads"
    sum_quals: "sum QUAL scores of input VCFs as output QUAL score"
  }
}