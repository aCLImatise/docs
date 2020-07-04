version 1.0

task Alimask {
  input {
    String? direct_summary_output
    String? model_range
    String? ali_range
    Boolean? ap_end_mask
    String? model_two_ali
    String? ali_two_model
    Boolean? amino
    Boolean? dna
    Boolean? rna
    String? out_format
    Boolean? fast
    Boolean? hand
    String? sym_frac
    String? frag_thresh
    Boolean? wpb
    Boolean? wgs_c
    Boolean? w_blosum
    Boolean? w_none
    Boolean? w_given
    String? wid
    String? in_format
    String? seed
    Boolean? options
    String msa_file
    String post_msa_file
  }
  command <<<
    alimask \
      ~{msa_file} \
      ~{post_msa_file} \
      ~{if defined(direct_summary_output) then ("-o " +  '"' + direct_summary_output + '"') else ""} \
      ~{if defined(model_range) then ("--modelrange " +  '"' + model_range + '"') else ""} \
      ~{if defined(ali_range) then ("--alirange " +  '"' + ali_range + '"') else ""} \
      ~{true="--apendmask" false="" ap_end_mask} \
      ~{if defined(model_two_ali) then ("--model2ali " +  '"' + model_two_ali + '"') else ""} \
      ~{if defined(ali_two_model) then ("--ali2model " +  '"' + ali_two_model + '"') else ""} \
      ~{true="--amino" false="" amino} \
      ~{true="--dna" false="" dna} \
      ~{true="--rna" false="" rna} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{true="--fast" false="" fast} \
      ~{true="--hand" false="" hand} \
      ~{if defined(sym_frac) then ("--symfrac " +  '"' + sym_frac + '"') else ""} \
      ~{if defined(frag_thresh) then ("--fragthresh " +  '"' + frag_thresh + '"') else ""} \
      ~{true="--wpb" false="" wpb} \
      ~{true="--wgsc" false="" wgs_c} \
      ~{true="--wblosum" false="" w_blosum} \
      ~{true="--wnone" false="" w_none} \
      ~{true="--wgiven" false="" w_given} \
      ~{if defined(wid) then ("--wid " +  '"' + wid + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    direct_summary_output: ": direct summary output to file <f>, not stdout"
    model_range: ": range(s) for mask(s) in model coordinates"
    ali_range: ": range(s) for mask(s) in alignment coordinates"
    ap_end_mask: ": add to existing mask (default ignores to existing mask)"
    model_two_ali: ": given model ranges, print corresp. input alignment ranges"
    ali_two_model: ": given alignment ranges, print corresp. model ranges"
    amino: ": input alignment is protein sequence data"
    dna: ": input alignment is DNA sequence data"
    rna: ": input alignment is RNA sequence data"
    out_format: ": output alignment in format <s>  [Stockholm]"
    fast: ": assign cols w/ >= symfrac residues as consensus  [default]"
    hand: ": manual construction (requires reference annotation)"
    sym_frac: ": sets sym fraction controlling --fast construction  [0.5]"
    frag_thresh: ": if L <= x*alen, tag sequence as a fragment  [0.5]"
    wpb: ": Henikoff position-based weights  [default]"
    wgs_c: ": Gerstein/Sonnhammer/Chothia tree weights"
    w_blosum: ": Henikoff simple filter weights"
    w_none: ": don't do any relative weighting; set all to 1"
    w_given: ": use weights as given in MSA file"
    wid: ": for --wblosum: set identity cutoff  [0.62]  (0<=x<=1)"
    in_format: ": assert input alifile is in format <s> (no autodetect)"
    seed: ": set RNG seed to <n> (if 0: one-time arbitrary seed)  [42]"
    options: ""
    msa_file: ""
    post_msa_file: ""
  }
}