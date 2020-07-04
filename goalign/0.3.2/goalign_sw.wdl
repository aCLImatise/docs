version 1.0

task GoalignSw {
  input {
    Float? gap_extend
    Float? gap_open
    String? log
    Float? match
    Float? mismatch
    String? alignment_output_file
    String? align
    Boolean? auto_detect
    Boolean? clustal
    Boolean? ignore_identical
    Boolean? input_strict
    Boolean? nexus
    Boolean? no_block
    Boolean? one_line
    Boolean? output_strict
    Boolean? phylip
    Int? seed
    Int? threads
    String? flags
  }
  command <<<
    goalign sw \
      ~{flags} \
      ~{if defined(gap_extend) then ("--gap-extend " +  '"' + gap_extend + '"') else ""} \
      ~{if defined(gap_open) then ("--gap-open " +  '"' + gap_open + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(match) then ("--match " +  '"' + match + '"') else ""} \
      ~{if defined(mismatch) then ("--mismatch " +  '"' + mismatch + '"') else ""} \
      ~{if defined(alignment_output_file) then ("--output " +  '"' + alignment_output_file + '"') else ""} \
      ~{if defined(align) then ("--align " +  '"' + align + '"') else ""} \
      ~{true="--auto-detect" false="" auto_detect} \
      ~{true="--clustal" false="" clustal} \
      ~{true="--ignore-identical" false="" ignore_identical} \
      ~{true="--input-strict" false="" input_strict} \
      ~{true="--nexus" false="" nexus} \
      ~{true="--no-block" false="" no_block} \
      ~{true="--one-line" false="" one_line} \
      ~{true="--output-strict" false="" output_strict} \
      ~{true="--phylip" false="" phylip} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    gap_extend: "Score for extending a gap  (default -0.5)"
    gap_open: "Score for opening a gap  (default -10)"
    log: "Alignment log file (default \"none\")"
    match: "Score for a match (if omitted, then take substitution matrix) (default 1)"
    mismatch: "Score for a mismatch (if omitted, then take substitution matrix) (default -1)"
    alignment_output_file: "Alignment output file (default \"stdout\")"
    align: "Alignment input file (default \"stdin\")"
    auto_detect: "Auto detects input format (overrides -p, -x and -u)"
    clustal: "Alignment is in clustal? default fasta"
    ignore_identical: "Ignore duplicated sequences that have the same name and same sequences"
    input_strict: "Strict phylip input format (only used with -p)"
    nexus: "Alignment is in nexus? default fasta"
    no_block: "Write Phylip sequences without space separated blocks (only used with -p)"
    one_line: "Write Phylip sequences on 1 line (only used with -p)"
    output_strict: "Strict phylip output format (only used with -p)"
    phylip: "Alignment is in phylip? default fasta"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (default 1)"
    flags: ""
  }
}