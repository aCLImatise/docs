version 1.0

task SamtoolsPileup {
  input {
    Boolean? simple_incomplete_pileup
    Boolean? the_input_sam
    Boolean? disable_baq_computation
    Boolean? use_original_model
    Boolean? output_nd_call
    Boolean? only_show_linesconsensus
    Int? min_base_quality
    Int? coefficient_adjusting_mapq
    Int? filtering_reads_bits
    Int? cap_mapping_quality
    Int? limit_maximum_depth
    File? list_reference_sequences
    File? list_sites_pileup
    File? reference_sequence_fasta
    Boolean? compute_consensus_sequence
    Boolean? print_variants_only
    Boolean? output_glfv_format
    Float? theta_calling_model
    Int? number_haplotypes_sample
    Float? prior_difference_two
    Float? prior_indel_two
    Int? phred_prob_indel
    String in_dot_bam
  }
  command <<<
    samtools pileup \
      ~{in_dot_bam} \
      ~{true="-s" false="" simple_incomplete_pileup} \
      ~{true="-S" false="" the_input_sam} \
      ~{true="-B" false="" disable_baq_computation} \
      ~{true="-A" false="" use_original_model} \
      ~{true="-2" false="" output_nd_call} \
      ~{true="-i" false="" only_show_linesconsensus} \
      ~{if defined(min_base_quality) then ("-Q " +  '"' + min_base_quality + '"') else ""} \
      ~{if defined(coefficient_adjusting_mapq) then ("-C " +  '"' + coefficient_adjusting_mapq + '"') else ""} \
      ~{if defined(filtering_reads_bits) then ("-m " +  '"' + filtering_reads_bits + '"') else ""} \
      ~{if defined(cap_mapping_quality) then ("-M " +  '"' + cap_mapping_quality + '"') else ""} \
      ~{if defined(limit_maximum_depth) then ("-d " +  '"' + limit_maximum_depth + '"') else ""} \
      ~{if defined(list_reference_sequences) then ("-t " +  '"' + list_reference_sequences + '"') else ""} \
      ~{if defined(list_sites_pileup) then ("-l " +  '"' + list_sites_pileup + '"') else ""} \
      ~{if defined(reference_sequence_fasta) then ("-f " +  '"' + reference_sequence_fasta + '"') else ""} \
      ~{true="-c" false="" compute_consensus_sequence} \
      ~{true="-v" false="" print_variants_only} \
      ~{true="-g" false="" output_glfv_format} \
      ~{if defined(theta_calling_model) then ("-T " +  '"' + theta_calling_model + '"') else ""} \
      ~{if defined(number_haplotypes_sample) then ("-N " +  '"' + number_haplotypes_sample + '"') else ""} \
      ~{if defined(prior_difference_two) then ("-r " +  '"' + prior_difference_two + '"') else ""} \
      ~{if defined(prior_indel_two) then ("-G " +  '"' + prior_indel_two + '"') else ""} \
      ~{if defined(phred_prob_indel) then ("-I " +  '"' + phred_prob_indel + '"') else ""}
  >>>
  parameter_meta {
    simple_incomplete_pileup: "simple (yet incomplete) pileup format"
    the_input_sam: "the input is in SAM"
    disable_baq_computation: "disable BAQ computation"
    use_original_model: "use the original MAQ model for SNP calling (DEPRECATED)"
    output_nd_call: "output the 2nd best call and quality"
    only_show_linesconsensus: "only show lines/consensus with indels"
    min_base_quality: "min base quality (possibly capped by BAQ) [13]"
    coefficient_adjusting_mapq: "coefficient for adjusting mapQ of poor mappings [0]"
    filtering_reads_bits: "filtering reads with bits in INT [0x704]"
    cap_mapping_quality: "cap mapping quality at INT [60]"
    limit_maximum_depth: "limit maximum depth for indels [1024]"
    list_reference_sequences: "list of reference sequences (force -S)"
    list_sites_pileup: "list of sites at which pileup is output"
    reference_sequence_fasta: "reference sequence in the FASTA format"
    compute_consensus_sequence: "compute the consensus sequence"
    print_variants_only: "print variants only (for -c)"
    output_glfv_format: "output in the GLFv3 format (DEPRECATED)"
    theta_calling_model: "theta in maq consensus calling model (for -c) [0.83]"
    number_haplotypes_sample: "number of haplotypes in the sample (for -c) [2]"
    prior_difference_two: "prior of a difference between two haplotypes (for -c) [0.001]"
    prior_indel_two: "prior of an indel between two haplotypes (for -c) [0.00015]"
    phred_prob_indel: "phred prob. of an indel in sequencing/prep. (for -c) [40]"
    in_dot_bam: ""
  }
}