version 1.0

task Samtools0118Mpileup {
  input {
    Boolean? assume_quality_illumina
    Boolean? count_anomalous_pairs
    Boolean? disable_baq_computation
    File? list_input_bam
    Int? parameter_adjusting_disable
    Int? max_perbam_depth
    Boolean? extended_baq_higher
    File? faidx_indexed_reference
    File? exclude_read_groups
    File? list_positions_chr
    Int? cap_mapping_quality
    String? region_pileup_generated
    Boolean? ignore_rg_tags
    Int? skip_alignments_mapq
    Int? skip_bases_smaller
    Boolean? output_persample_dp
    Boolean? generate_bcf_likelihoods
    Boolean? output_base_positions
    Boolean? output_mapping_quality
    Boolean? output_persample_strand
    Boolean? generate_uncompress_output
    Int? phredscaled_extension_seq
    Float? minimum_fraction_gapped
    Int? coefficient_homopolymer_errors
    Boolean? perform_indel_calling
    Int? max_persample_depth
    Int? minimum_gapped_reads
    Int? phredscaled_gap_open
    String? comma_separated_list
    String sam_tools
    String m_pile_up
    Int in_one_dot_bam
  }
  command <<<
    samtools_0_1_18 mpileup \
      ~{sam_tools} \
      ~{m_pile_up} \
      ~{in_one_dot_bam} \
      ~{if (assume_quality_illumina) then "-6" else ""} \
      ~{if (count_anomalous_pairs) then "-A" else ""} \
      ~{if (disable_baq_computation) then "-B" else ""} \
      ~{if defined(list_input_bam) then ("-b " +  '"' + list_input_bam + '"') else ""} \
      ~{if defined(parameter_adjusting_disable) then ("-C " +  '"' + parameter_adjusting_disable + '"') else ""} \
      ~{if defined(max_perbam_depth) then ("-d " +  '"' + max_perbam_depth + '"') else ""} \
      ~{if (extended_baq_higher) then "-E" else ""} \
      ~{if defined(faidx_indexed_reference) then ("-f " +  '"' + faidx_indexed_reference + '"') else ""} \
      ~{if defined(exclude_read_groups) then ("-G " +  '"' + exclude_read_groups + '"') else ""} \
      ~{if defined(list_positions_chr) then ("-l " +  '"' + list_positions_chr + '"') else ""} \
      ~{if defined(cap_mapping_quality) then ("-M " +  '"' + cap_mapping_quality + '"') else ""} \
      ~{if defined(region_pileup_generated) then ("-r " +  '"' + region_pileup_generated + '"') else ""} \
      ~{if (ignore_rg_tags) then "-R" else ""} \
      ~{if defined(skip_alignments_mapq) then ("-q " +  '"' + skip_alignments_mapq + '"') else ""} \
      ~{if defined(skip_bases_smaller) then ("-Q " +  '"' + skip_bases_smaller + '"') else ""} \
      ~{if (output_persample_dp) then "-D" else ""} \
      ~{if (generate_bcf_likelihoods) then "-g" else ""} \
      ~{if (output_base_positions) then "-O" else ""} \
      ~{if (output_mapping_quality) then "-s" else ""} \
      ~{if (output_persample_strand) then "-S" else ""} \
      ~{if (generate_uncompress_output) then "-u" else ""} \
      ~{if defined(phredscaled_extension_seq) then ("-e " +  '"' + phredscaled_extension_seq + '"') else ""} \
      ~{if defined(minimum_fraction_gapped) then ("-F " +  '"' + minimum_fraction_gapped + '"') else ""} \
      ~{if defined(coefficient_homopolymer_errors) then ("-h " +  '"' + coefficient_homopolymer_errors + '"') else ""} \
      ~{if (perform_indel_calling) then "-I" else ""} \
      ~{if defined(max_persample_depth) then ("-L " +  '"' + max_persample_depth + '"') else ""} \
      ~{if defined(minimum_gapped_reads) then ("-m " +  '"' + minimum_gapped_reads + '"') else ""} \
      ~{if defined(phredscaled_gap_open) then ("-o " +  '"' + phredscaled_gap_open + '"') else ""} \
      ~{if defined(comma_separated_list) then ("-P " +  '"' + comma_separated_list + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    assume_quality_illumina: "assume the quality is in the Illumina-1.3+ encoding"
    count_anomalous_pairs: "count anomalous read pairs"
    disable_baq_computation: "disable BAQ computation"
    list_input_bam: "list of input BAM files [null]"
    parameter_adjusting_disable: "parameter for adjusting mapQ; 0 to disable [0]"
    max_perbam_depth: "max per-BAM depth to avoid excessive memory usage [250]"
    extended_baq_higher: "extended BAQ for higher sensitivity but lower specificity"
    faidx_indexed_reference: "faidx indexed reference sequence file [null]"
    exclude_read_groups: "exclude read groups listed in FILE [null]"
    list_positions_chr: "list of positions (chr pos) or regions (BED) [null]"
    cap_mapping_quality: "cap mapping quality at INT [60]"
    region_pileup_generated: "region in which pileup is generated [null]"
    ignore_rg_tags: "ignore RG tags"
    skip_alignments_mapq: "skip alignments with mapQ smaller than INT [0]"
    skip_bases_smaller: "skip bases with baseQ/BAQ smaller than INT [13]"
    output_persample_dp: "output per-sample DP in BCF (require -g/-u)"
    generate_bcf_likelihoods: "generate BCF output (genotype likelihoods)"
    output_base_positions: "output base positions on reads (disabled by -g/-u)"
    output_mapping_quality: "output mapping quality (disabled by -g/-u)"
    output_persample_strand: "output per-sample strand bias P-value in BCF (require -g/-u)"
    generate_uncompress_output: "generate uncompress BCF output"
    phredscaled_extension_seq: "Phred-scaled gap extension seq error probability [20]"
    minimum_fraction_gapped: "minimum fraction of gapped reads for candidates [0.002]"
    coefficient_homopolymer_errors: "coefficient for homopolymer errors [100]"
    perform_indel_calling: "do not perform indel calling"
    max_persample_depth: "max per-sample depth for INDEL calling [250]"
    minimum_gapped_reads: "minimum gapped reads for indel candidates [1]"
    phredscaled_gap_open: "Phred-scaled gap open sequencing error probability [40]"
    comma_separated_list: "comma separated list of platforms for indels [all]"
    sam_tools: ""
    m_pile_up: ""
    in_one_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}