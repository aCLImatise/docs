version 1.0

task Hisat2ExtractSnpsHaplotypesUCSCpySnpFname {
  input {
    String? inter_gap
    Int his_at_two_extract_snps_haplotypes_ucsc_do_tpy
  }
  command <<<
    hisat2_extract_snps_haplotypes_UCSC_py snp_fname \
      ~{his_at_two_extract_snps_haplotypes_ucsc_do_tpy} \
      ~{if defined(inter_gap) then ("--inter-gap " +  '"' + inter_gap + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    inter_gap: ""
    his_at_two_extract_snps_haplotypes_ucsc_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}