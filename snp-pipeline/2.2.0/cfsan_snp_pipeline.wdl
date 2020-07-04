version 1.0

task CfsanSnpPipeline {
  input {
    String subcommand
  }
  command <<<
    cfsan_snp_pipeline \
      ~{subcommand}
  >>>
  parameter_meta {
    subcommand: "run              This do-it-all script runs all the pipeline steps data             Copy included data to a specified directory index_ref        Index the reference map_reads        Align reads to the reference call_sites       Find the sites with high-confidence SNPs in a sample filter_regions   Remove abnormally dense SNPs from all samples merge_sites      Prepare the list of sites having SNPs call_consensus   Call the consensus base at high-confidence sites merge_vcfs       Merge the per-sample VCF files snp_matrix       Create a matrix of SNPs distance         Calculate the SNP distances between samples snp_reference    Write reference bases at SNP locations to a fasta file collect_metrics  Collect quality and SNP metrics for a sample combine_metrics  Merge the per-sample metrics purge            Purge the intermediate output files"
  }
}