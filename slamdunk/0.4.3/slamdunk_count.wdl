version 1.0

task SlamdunkCount {
  input {
    String? output_dir
    String? snp_directory
    String? vcf
    String? reference
    String? bed
    String? conversion_threshold
    Int? max_read_length
    Int? min_base_qual
    String? threads
    String bam
  }
  command <<<
    slamdunk count \
      ~{bam} \
      ~{if defined(output_dir) then ("--outputDir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(snp_directory) then ("--snp-directory " +  '"' + snp_directory + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(conversion_threshold) then ("--conversion-threshold " +  '"' + conversion_threshold + '"') else ""} \
      ~{if defined(max_read_length) then ("--max-read-length " +  '"' + max_read_length + '"') else ""} \
      ~{if defined(min_base_qual) then ("--min-base-qual " +  '"' + min_base_qual + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    output_dir: "Output directory for mapped BAM files."
    snp_directory: "Directory containing SNP files."
    vcf: "Externally provided custom variant file."
    reference: "Reference fasta file"
    bed: "BED file"
    conversion_threshold: "Number of T>C conversions required to count read as T>C read (default: 1)"
    max_read_length: "Max read length in BAM file"
    min_base_qual: "Min base quality for T -> C conversions (default: 27)"
    threads: "Thread number (default: 1)"
    bam: "Bam file(s)"
  }
}