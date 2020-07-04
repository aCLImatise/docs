version 1.0

task GoalignClean {
  input {
    Float? cut_off
    String? cleaned_file_default
    Boolean? quiet
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
    String seqs
    String sites
  }
  command <<<
    goalign clean \
      ~{seqs} \
      ~{sites} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(cleaned_file_default) then ("--output " +  '"' + cleaned_file_default + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
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
    cut_off: "Cutoff for gap deletion : 0 remove sites/sequences with > 0 gap, 1 remove sites/sequences with 100% gaps)"
    cleaned_file_default: "Cleaned alignment output file (default \"stdout\")"
    quiet: "Do not print results on stderr"
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
    seqs: "Removes sequences with gaps"
    sites: "Removes sites with gaps"
  }
}