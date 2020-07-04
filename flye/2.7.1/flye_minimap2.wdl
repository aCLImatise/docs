version 1.0

task FlyeMinimap2 {
  input {
    Boolean? use_homopolymercompressed_kmer
    Int? kmer_size_larger
    Int? minimizer_window_size
    String? split_index_num
    File? dump_index_file
    Float? filter_top_fraction
    String? stop_chain_enlongation
    String? max_intron_length
    String? max_fragment_length
    String? bandwidth_used_alignment
    Int? minimal_number_minimizers
    Int? minimal_chaining_score
    Boolean? skip_self_mappings
    Float? min_secondarytoprimary_score
    Int? retain_most_alignments
    Int? matching_score
    Int? mismatch_penalty
    Array[Int] gap_open_penalty
    Array[Int] gap_extension_penalty
    Array[Int] zdrop_score_inversion
    Int? minimal_peak_dp
    String? how_find_gtag
    Boolean? output_sam_paf
    File? output_alignments_file
    Boolean? write_cigar_ops
    String? sam_read_line
    Boolean? output_cigar_paf
    Boolean? cs
    Boolean? md
    Boolean? eq_x
    Boolean? use_soft_clipping
    Int? number_of_threads
    String? minibatch_size_mapping
    String? preset_always_applied
    Int minimap_two
    String target_dot_fa
  }
  command <<<
    flye-minimap2 \
      ~{minimap_two} \
      ~{target_dot_fa} \
      ~{true="-H" false="" use_homopolymercompressed_kmer} \
      ~{if defined(kmer_size_larger) then ("-k " +  '"' + kmer_size_larger + '"') else ""} \
      ~{if defined(minimizer_window_size) then ("-w " +  '"' + minimizer_window_size + '"') else ""} \
      ~{if defined(split_index_num) then ("-I " +  '"' + split_index_num + '"') else ""} \
      ~{if defined(dump_index_file) then ("-d " +  '"' + dump_index_file + '"') else ""} \
      ~{if defined(filter_top_fraction) then ("-f " +  '"' + filter_top_fraction + '"') else ""} \
      ~{if defined(stop_chain_enlongation) then ("-g " +  '"' + stop_chain_enlongation + '"') else ""} \
      ~{if defined(max_intron_length) then ("-G " +  '"' + max_intron_length + '"') else ""} \
      ~{if defined(max_fragment_length) then ("-F " +  '"' + max_fragment_length + '"') else ""} \
      ~{if defined(bandwidth_used_alignment) then ("-r " +  '"' + bandwidth_used_alignment + '"') else ""} \
      ~{if defined(minimal_number_minimizers) then ("-n " +  '"' + minimal_number_minimizers + '"') else ""} \
      ~{if defined(minimal_chaining_score) then ("-m " +  '"' + minimal_chaining_score + '"') else ""} \
      ~{true="-X" false="" skip_self_mappings} \
      ~{if defined(min_secondarytoprimary_score) then ("-p " +  '"' + min_secondarytoprimary_score + '"') else ""} \
      ~{if defined(retain_most_alignments) then ("-N " +  '"' + retain_most_alignments + '"') else ""} \
      ~{if defined(matching_score) then ("-A " +  '"' + matching_score + '"') else ""} \
      ~{if defined(mismatch_penalty) then ("-B " +  '"' + mismatch_penalty + '"') else ""} \
      ~{if defined(gap_open_penalty) then ("-O " +  '"' + gap_open_penalty + '"') else ""} \
      ~{if defined(gap_extension_penalty) then ("-E " +  '"' + gap_extension_penalty + '"') else ""} \
      ~{if defined(zdrop_score_inversion) then ("-z " +  '"' + zdrop_score_inversion + '"') else ""} \
      ~{if defined(minimal_peak_dp) then ("-s " +  '"' + minimal_peak_dp + '"') else ""} \
      ~{if defined(how_find_gtag) then ("-u " +  '"' + how_find_gtag + '"') else ""} \
      ~{true="-a" false="" output_sam_paf} \
      ~{if defined(output_alignments_file) then ("-o " +  '"' + output_alignments_file + '"') else ""} \
      ~{true="-L" false="" write_cigar_ops} \
      ~{if defined(sam_read_line) then ("-R " +  '"' + sam_read_line + '"') else ""} \
      ~{true="-c" false="" output_cigar_paf} \
      ~{true="--cs" false="" cs} \
      ~{true="--MD" false="" md} \
      ~{true="--eqx" false="" eq_x} \
      ~{true="-Y" false="" use_soft_clipping} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(minibatch_size_mapping) then ("-K " +  '"' + minibatch_size_mapping + '"') else ""} \
      ~{if defined(preset_always_applied) then ("-x " +  '"' + preset_always_applied + '"') else ""}
  >>>
  parameter_meta {
    use_homopolymercompressed_kmer: "use homopolymer-compressed k-mer (preferrable for PacBio)"
    kmer_size_larger: "k-mer size (no larger than 28) [15]"
    minimizer_window_size: "minimizer window size [10]"
    split_index_num: "split index for every ~NUM input bases [4G]"
    dump_index_file: "dump index to FILE []"
    filter_top_fraction: "filter out top FLOAT fraction of repetitive minimizers [0.0002]"
    stop_chain_enlongation: "stop chain enlongation if there are no minimizers in INT-bp [5000]"
    max_intron_length: "max intron length (effective with -xsplice; changing -r) [200k]"
    max_fragment_length: "max fragment length (effective with -xsr or in the fragment mode) [800]"
    bandwidth_used_alignment: "bandwidth used in chaining and DP-based alignment [500]"
    minimal_number_minimizers: "minimal number of minimizers on a chain [3]"
    minimal_chaining_score: "minimal chaining score (matching bases minus log gap penalty) [40]"
    skip_self_mappings: "skip self and dual mappings (for the all-vs-all mode)"
    min_secondarytoprimary_score: "min secondary-to-primary score ratio [0.8]"
    retain_most_alignments: "retain at most INT secondary alignments [5]"
    matching_score: "matching score [2]"
    mismatch_penalty: "mismatch penalty [4]"
    gap_open_penalty: "gap open penalty [4,24]"
    gap_extension_penalty: "gap extension penalty; a k-long gap costs min{O1+k*E1,O2+k*E2} [2,1]"
    zdrop_score_inversion: "Z-drop score and inversion Z-drop score [400,200]"
    minimal_peak_dp: "minimal peak DP alignment score [80]"
    how_find_gtag: "how to find GT-AG. f:transcript strand, b:both strands, n:don't match GT-AG [n]"
    output_sam_paf: "output in the SAM format (PAF by default)"
    output_alignments_file: "output alignments to FILE [stdout]"
    write_cigar_ops: "write CIGAR with >65535 ops at the CG tag"
    sam_read_line: "SAM read group line in a format like '@RG\tID:foo\tSM:bar' []"
    output_cigar_paf: "output CIGAR in PAF"
    cs: "[=STR]   output the cs tag; STR is 'short' (if absent) or 'long' [none]"
    md: "output the MD tag"
    eq_x: "write =/X CIGAR operators"
    use_soft_clipping: "use soft clipping for supplementary alignments"
    number_of_threads: "number of threads [3]"
    minibatch_size_mapping: "minibatch size for mapping [500M]"
    preset_always_applied: "preset (always applied before other options; see minimap2.1 for details) [] - map-pb/map-ont: PacBio/Nanopore vs reference mapping - ava-pb/ava-ont: PacBio/Nanopore read overlap - asm5/asm10/asm20: asm-to-ref mapping, for ~0.1/1/5% sequence divergence - splice: long-read spliced alignment - sr: genomic short-read mapping"
    minimap_two: ""
    target_dot_fa: ""
  }
}