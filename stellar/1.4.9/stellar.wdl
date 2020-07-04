version 1.0

task Stellar {
  input {
    Boolean? version_check
    String? epsilon
    Int? minlength
    Boolean? forward
    Boolean? reverse
    String? alphabet
    Boolean? verbose
    Int? km_er
    Int? repeat_period
    Int? repeat_length
    String? abundance_cut
    String? x_drop
    String? verification
    Int? disable_thresh
    Int? num_matches
    Int? sort_thresh
    String? out
    String? out_disabled
  }
  command <<<
    stellar \
      ~{if defined(version_check) then ("--version-check " +  '"' + version_check + '"') else ""} \
      ~{if defined(epsilon) then ("--epsilon " +  '"' + epsilon + '"') else ""} \
      ~{if defined(minlength) then ("--minLength " +  '"' + minlength + '"') else ""} \
      ~{true="--forward" false="" forward} \
      ~{true="--reverse" false="" reverse} \
      ~{if defined(alphabet) then ("--alphabet " +  '"' + alphabet + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(repeat_period) then ("--repeatPeriod " +  '"' + repeat_period + '"') else ""} \
      ~{if defined(repeat_length) then ("--repeatLength " +  '"' + repeat_length + '"') else ""} \
      ~{if defined(abundance_cut) then ("--abundanceCut " +  '"' + abundance_cut + '"') else ""} \
      ~{if defined(x_drop) then ("--xDrop " +  '"' + x_drop + '"') else ""} \
      ~{if defined(verification) then ("--verification " +  '"' + verification + '"') else ""} \
      ~{if defined(disable_thresh) then ("--disableThresh " +  '"' + disable_thresh + '"') else ""} \
      ~{if defined(num_matches) then ("--numMatches " +  '"' + num_matches + '"') else ""} \
      ~{if defined(sort_thresh) then ("--sortThresh " +  '"' + sort_thresh + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(out_disabled) then ("--outDisabled " +  '"' + out_disabled + '"') else ""}
  >>>
  parameter_meta {
    version_check: "Turn this option off to disable version update notifications of the application. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1."
    epsilon: "Maximal error rate (max 0.25). In range [0.0000001..0.25]. Default: 0.05."
    minlength: "Minimal length of epsilon-matches. In range [0..inf]. Default: 100."
    forward: "Search only in forward strand of database."
    reverse: "Search only in reverse complement of database."
    alphabet: "Alphabet type of input sequences (dna, rna, dna5, rna5, protein, char). One of dna, dna5, rna, rna5, protein, and char."
    verbose: "Set verbosity mode."
    km_er: "Length of the q-grams (max 32). In range [1..32]."
    repeat_period: "Maximal period of low complexity repeats to be filtered. Default: 1."
    repeat_length: "Minimal length of low complexity repeats to be filtered. Default: 1000."
    abundance_cut: "k-mer overabundance cut ratio. In range [0..1]. Default: 1."
    x_drop: "Maximal x-drop for extension. Default: 5."
    verification: "Verification strategy: exact or bestLocal or bandedGlobal One of exact, bestLocal, and bandedGlobal. Default: exact."
    disable_thresh: "Maximal number of verified matches before disabling verification for one query sequence (default infinity). In range [0..inf]."
    num_matches: "Maximal number of kept matches per query and database. If STELLAR finds more matches, only the longest ones are kept. Default: 50."
    sort_thresh: "Number of matches triggering removal of duplicates. Choose a smaller value for saving space. Default: 500."
    out: "Name of output file. Valid filetypes are: .txt and .gff. Default: stellar.gff."
    out_disabled: "Name of output file for disabled query sequences. Valid filetypes are: .fasta and .fa. Default: stellar.disabled.fasta."
  }
}