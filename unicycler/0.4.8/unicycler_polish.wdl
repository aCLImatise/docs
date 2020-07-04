version 1.0

task UnicyclerPolish {
  input {
    String? assembly
    String? short_one
    String? short_two
    Array[String] pb_bax
    String? pb_bam
    String? pb_fast_a
    String? long_reads
    Boolean? no_fix_local
    Int? min_insert
    Int? max_insert
    Int? min_align_length
    String? homopolymer
    String? large
    String? illumina_alt
    String? free_bayes_qual_cut_off
    String? threads
    String? verbosity
    String? sam_tools
    String? bowtie_two
    Int? minimap_two
    String? free_bayes
    String? pitchfork
    String? bax_two_bam
    String? pb_align
    String? arrow
    String? pilon
    String? java
    String? ale
    String? rac_on
    Int? minimap
    String? nuc_mer
    String? shows_nps
  }
  command <<<
    unicycler_polish \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if defined(short_one) then ("--short1 " +  '"' + short_one + '"') else ""} \
      ~{if defined(short_two) then ("--short2 " +  '"' + short_two + '"') else ""} \
      ~{if defined(pb_bax) then ("--pb_bax " +  '"' + pb_bax + '"') else ""} \
      ~{if defined(pb_bam) then ("--pb_bam " +  '"' + pb_bam + '"') else ""} \
      ~{if defined(pb_fast_a) then ("--pb_fasta " +  '"' + pb_fast_a + '"') else ""} \
      ~{if defined(long_reads) then ("--long_reads " +  '"' + long_reads + '"') else ""} \
      ~{true="--no_fix_local" false="" no_fix_local} \
      ~{if defined(min_insert) then ("--min_insert " +  '"' + min_insert + '"') else ""} \
      ~{if defined(max_insert) then ("--max_insert " +  '"' + max_insert + '"') else ""} \
      ~{if defined(min_align_length) then ("--min_align_length " +  '"' + min_align_length + '"') else ""} \
      ~{if defined(homopolymer) then ("--homopolymer " +  '"' + homopolymer + '"') else ""} \
      ~{if defined(large) then ("--large " +  '"' + large + '"') else ""} \
      ~{if defined(illumina_alt) then ("--illumina_alt " +  '"' + illumina_alt + '"') else ""} \
      ~{if defined(free_bayes_qual_cut_off) then ("--freebayes_qual_cutoff " +  '"' + free_bayes_qual_cut_off + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(sam_tools) then ("--samtools " +  '"' + sam_tools + '"') else ""} \
      ~{if defined(bowtie_two) then ("--bowtie2 " +  '"' + bowtie_two + '"') else ""} \
      ~{if defined(minimap_two) then ("--minimap2 " +  '"' + minimap_two + '"') else ""} \
      ~{if defined(free_bayes) then ("--freebayes " +  '"' + free_bayes + '"') else ""} \
      ~{if defined(pitchfork) then ("--pitchfork " +  '"' + pitchfork + '"') else ""} \
      ~{if defined(bax_two_bam) then ("--bax2bam " +  '"' + bax_two_bam + '"') else ""} \
      ~{if defined(pb_align) then ("--pbalign " +  '"' + pb_align + '"') else ""} \
      ~{if defined(arrow) then ("--arrow " +  '"' + arrow + '"') else ""} \
      ~{if defined(pilon) then ("--pilon " +  '"' + pilon + '"') else ""} \
      ~{if defined(java) then ("--java " +  '"' + java + '"') else ""} \
      ~{if defined(ale) then ("--ale " +  '"' + ale + '"') else ""} \
      ~{if defined(rac_on) then ("--racon " +  '"' + rac_on + '"') else ""} \
      ~{if defined(minimap) then ("--minimap " +  '"' + minimap + '"') else ""} \
      ~{if defined(nuc_mer) then ("--nucmer " +  '"' + nuc_mer + '"') else ""} \
      ~{if defined(shows_nps) then ("--showsnps " +  '"' + shows_nps + '"') else ""}
  >>>
  parameter_meta {
    assembly: "Input assembly to be polished"
    short_one: "FASTQ file of short reads (first reads in each pair)"
    short_two: "FASTQ file of short reads (second reads in each pair)"
    pb_bax: "PacBio raw bax.h5 read files"
    pb_bam: "PacBio BAM read file"
    pb_fast_a: "FASTA file of PacBio reads"
    long_reads: "FASTQ/FASTA file of long reads"
    no_fix_local: "do not fix local misassemblies (default: False)"
    min_insert: "minimum valid short read insert size (default: auto)"
    max_insert: "maximum valid short read insert size (default: auto)"
    min_align_length: "Minimum long read alignment length (default: 1000)"
    homopolymer: "Long read polish changes to a homopolymer of this length or greater will be ignored (default: 4)"
    large: "Variants of this size or greater will be assess as large variants (default: 10)"
    illumina_alt: "When assessing long read changes with short read alignments, a variant will only be applied if the alternative occurrences in the short read alignments exceed this percentage (default: 5)"
    free_bayes_qual_cut_off: "Reject Pilon substitutions from long reads if the FreeBayes quality is less than this value (default: 10.0)"
    threads: "CPU threads to use in alignment and consensus (default: number of CPUs)"
    verbosity: "Level of stdout information (0 to 3, default: 2) 0 = no stdout, 1 = basic progress indicators, 2 = extra info, 3 = debugging info"
    sam_tools: "path to samtools executable (default: samtools)"
    bowtie_two: "path to bowtie2 executable (default: bowtie2)"
    minimap_two: "path to minimap2 executable (default: minimap2)"
    free_bayes: "path to freebayes executable (default: freebayes)"
    pitchfork: "Path to Pitchfork installation of PacBio tools (should contain bin and lib directories) (default: )"
    bax_two_bam: "path to bax2bam executable (default: bax2bam)"
    pb_align: "path to pbalign executable (default: pbalign)"
    arrow: "path to arrow executable (default: arrow)"
    pilon: "path to pilon jar file (default: pilon*.jar)"
    java: "path to java executable (default: java)"
    ale: "path to ALE executable (default: ALE)"
    rac_on: "path to racon executable (default: racon)"
    minimap: "path to miniasm executable (default: minimap)"
    nuc_mer: "path to nucmer executable (default: nucmer)"
    shows_nps: "path to show-snps executable (default: show-snps)"
  }
}