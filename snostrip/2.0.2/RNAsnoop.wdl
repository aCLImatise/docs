version 1.0

task RNAsnoop {
  input {
    Boolean? detailed_help
    Int? alignment_length
    Boolean? constraint
    String? query
    String? target
    String? suffix
    String? from_rna_pl_fold
    Boolean? alignment_mode
    Int? fast_folding
    Int? extension_cost
    Int? minimal_right_duplex
    Int? minimal_loop_energy
    Int? minimal_left_duplex
    Int? minimal_duplex
    Int? duplex_distance
    Int? minimal_stem_length
    Int? maximal_stem_length
    Int? minimal_duplex_box_length
    Int? maximal_duplex_box_length
    Int? minimal_snorna_stem_loop_length
    Int? maximal_snorna_stem_loop_length
    Int? minimal_snorna_duplex_length
    Int? maximal_snorna_duplex_length
    Int? minimal_duplex_stem_energy
    Int? minimal_total_energy
    Int? maximal_stem_asymmetry
    Int? minimal_lower_stem_energy
    String? energy_threshold
    Boolean? produce_ps
    String? output_directory
    Boolean? direct_redraw
    String? from_rna_up
  }
  command <<<
    RNAsnoop \
      ~{true="--detailed-help" false="" detailed_help} \
      ~{if defined(alignment_length) then ("--alignmentLength " +  '"' + alignment_length + '"') else ""} \
      ~{true="--constraint" false="" constraint} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if defined(from_rna_pl_fold) then ("--from-RNAplfold " +  '"' + from_rna_pl_fold + '"') else ""} \
      ~{true="--alignment-mode" false="" alignment_mode} \
      ~{if defined(fast_folding) then ("--fast-folding " +  '"' + fast_folding + '"') else ""} \
      ~{if defined(extension_cost) then ("--extension-cost " +  '"' + extension_cost + '"') else ""} \
      ~{if defined(minimal_right_duplex) then ("--minimal-right-duplex " +  '"' + minimal_right_duplex + '"') else ""} \
      ~{if defined(minimal_loop_energy) then ("--minimal-loop-energy " +  '"' + minimal_loop_energy + '"') else ""} \
      ~{if defined(minimal_left_duplex) then ("--minimal-left-duplex " +  '"' + minimal_left_duplex + '"') else ""} \
      ~{if defined(minimal_duplex) then ("--minimal-duplex " +  '"' + minimal_duplex + '"') else ""} \
      ~{if defined(duplex_distance) then ("--duplex-distance " +  '"' + duplex_distance + '"') else ""} \
      ~{if defined(minimal_stem_length) then ("--minimal-stem-length " +  '"' + minimal_stem_length + '"') else ""} \
      ~{if defined(maximal_stem_length) then ("--maximal-stem-length " +  '"' + maximal_stem_length + '"') else ""} \
      ~{if defined(minimal_duplex_box_length) then ("--minimal-duplex-box-length " +  '"' + minimal_duplex_box_length + '"') else ""} \
      ~{if defined(maximal_duplex_box_length) then ("--maximal-duplex-box-length " +  '"' + maximal_duplex_box_length + '"') else ""} \
      ~{if defined(minimal_snorna_stem_loop_length) then ("--minimal-snoRNA-stem-loop-length " +  '"' + minimal_snorna_stem_loop_length + '"') else ""} \
      ~{if defined(maximal_snorna_stem_loop_length) then ("--maximal-snoRNA-stem-loop-length " +  '"' + maximal_snorna_stem_loop_length + '"') else ""} \
      ~{if defined(minimal_snorna_duplex_length) then ("--minimal-snoRNA-duplex-length " +  '"' + minimal_snorna_duplex_length + '"') else ""} \
      ~{if defined(maximal_snorna_duplex_length) then ("--maximal-snoRNA-duplex-length " +  '"' + maximal_snorna_duplex_length + '"') else ""} \
      ~{if defined(minimal_duplex_stem_energy) then ("--minimal-duplex-stem-energy " +  '"' + minimal_duplex_stem_energy + '"') else ""} \
      ~{if defined(minimal_total_energy) then ("--minimal-total-energy " +  '"' + minimal_total_energy + '"') else ""} \
      ~{if defined(maximal_stem_asymmetry) then ("--maximal-stem-asymmetry " +  '"' + maximal_stem_asymmetry + '"') else ""} \
      ~{if defined(minimal_lower_stem_energy) then ("--minimal-lower-stem-energy " +  '"' + minimal_lower_stem_energy + '"') else ""} \
      ~{if defined(energy_threshold) then ("--energy-threshold " +  '"' + energy_threshold + '"') else ""} \
      ~{true="--produce-ps" false="" produce_ps} \
      ~{if defined(output_directory) then ("--output_directory " +  '"' + output_directory + '"') else ""} \
      ~{true="--direct-redraw" false="" direct_redraw} \
      ~{if defined(from_rna_up) then ("--from-RNAup " +  '"' + from_rna_up + '"') else ""}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden options, and exit"
    alignment_length: "Limit the extent of the interactions to L nucleotides (default=`25')"
    constraint: "Calculate the stem structure subject to constraints. (default=off)"
    query: "File containing the query sequence."
    target: "File containing the target sequence."
    suffix: "Specificy the suffix that was added by RNAup to the accessibility files (default=`_u1_to_30.out')"
    from_rna_pl_fold: "Specify the directory where accessibility profile generated by RNAplfold are found"
    alignment_mode: "Specify if RNAsnoop gets alignments or single sequences as input (default=off)"
    fast_folding: "Speedup of the target search  (default=`1')"
    extension_cost: "Cost to add to each nucleotide in a duplex (default=`0')"
    minimal_right_duplex: "Minimal Right Duplex Energy (default=`-270')"
    minimal_loop_energy: "Minimal Right Duplex Energy (default=`-280')"
    minimal_left_duplex: "Minimal Left Duplex Energy (default=`-170')"
    minimal_duplex: "Minimal Duplex Energy (default=`-1090')"
    duplex_distance: "Distance between target 3' ends of two consecutive duplexes (default=`2')"
    minimal_stem_length: "Minimal snoRNA stem length (default=`5')"
    maximal_stem_length: "Maximal snoRNA stem length (default=`120')"
    minimal_duplex_box_length: "Minimal distance between the duplex end and the H/ACA box (default=`11')"
    maximal_duplex_box_length: "Maximal distance between the duplex end and the H/ACA box (default=`16')"
    minimal_snorna_stem_loop_length: "Minimal number of nucleotides between the beginning of stem loop and beginning of the snoRNA sequence (default=`1')"
    maximal_snorna_stem_loop_length: "Maximal number of nucleotides between the beginning of stem loop and beginning of the snoRNA sequence (default=`100000')"
    minimal_snorna_duplex_length: "Minimal distance between duplex start and snoRNA (default=`0')"
    maximal_snorna_duplex_length: "Maximal distance between duplex start and snoRNA (default=`0')"
    minimal_duplex_stem_energy: "Minimal duplex stem energy (default=`-1370')"
    minimal_total_energy: "Minimal total energy (default=`100000')"
    maximal_stem_asymmetry: "Maximal snoRNA stem asymmetry (default=`30')"
    minimal_lower_stem_energy: "Minimal lower stem energy (default=`100000')"
    energy_threshold: "Maximal energy difference between the mfe and the desired suboptimal (default=`-1')"
    produce_ps: "Draw annotated 2D structures for a list of dot-bracket structures (default=off)"
    output_directory: "Set where the generated figures should be stored (default=`./')"
    direct_redraw: "Outputs 2D interactions concurrently with the interaction calculation for each suboptimal interaction. The -I option should be preferred. (default=off)"
    from_rna_up: "Specify the directory where accessibility profiles generated by RNAup are found"
  }
}