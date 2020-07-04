version 1.0

task MapCaller {
  input {
    String? bwtindexprefix
    String? reference_filename_formatfa
    Boolean? f
    Boolean? f_two
    Int? number_of_threads
    Boolean? size
    Int? in_del
    Int? ad
    Int? dup
    Float? max_mm
    Int? max_clip
    Boolean? sam
    Boolean? bam
    String? alg
    Boolean? vcf
    Boolean? gvc_f
    String? log
    Boolean? monomorphic
    Int? min_cnv
    Int? min_gap
    Int? ploidy
    Boolean? output_multiple_alignments
    Boolean? somatic
    Boolean? no_vcf
    Boolean? pairedend_reads_interlaced
    Boolean? filter
    Boolean? version
  }
  command <<<
    MapCaller \
      ~{if defined(bwtindexprefix) then ("-i " +  '"' + bwtindexprefix + '"') else ""} \
      ~{if defined(reference_filename_formatfa) then ("-r " +  '"' + reference_filename_formatfa + '"') else ""} \
      ~{true="-f" false="" f} \
      ~{true="-f2" false="" f_two} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{true="-size" false="" size} \
      ~{if defined(in_del) then ("-indel " +  '"' + in_del + '"') else ""} \
      ~{if defined(ad) then ("-ad " +  '"' + ad + '"') else ""} \
      ~{if defined(dup) then ("-dup " +  '"' + dup + '"') else ""} \
      ~{if defined(max_mm) then ("-maxmm " +  '"' + max_mm + '"') else ""} \
      ~{if defined(max_clip) then ("-maxclip " +  '"' + max_clip + '"') else ""} \
      ~{true="-sam" false="" sam} \
      ~{true="-bam" false="" bam} \
      ~{if defined(alg) then ("-alg " +  '"' + alg + '"') else ""} \
      ~{true="-vcf" false="" vcf} \
      ~{true="-gvcf" false="" gvc_f} \
      ~{if defined(log) then ("-log " +  '"' + log + '"') else ""} \
      ~{true="-monomorphic" false="" monomorphic} \
      ~{if defined(min_cnv) then ("-min_cnv " +  '"' + min_cnv + '"') else ""} \
      ~{if defined(min_gap) then ("-min_gap " +  '"' + min_gap + '"') else ""} \
      ~{if defined(ploidy) then ("-ploidy " +  '"' + ploidy + '"') else ""} \
      ~{true="-m" false="" output_multiple_alignments} \
      ~{true="-somatic" false="" somatic} \
      ~{true="-no_vcf" false="" no_vcf} \
      ~{true="-p" false="" pairedend_reads_interlaced} \
      ~{true="-filter" false="" filter} \
      ~{true="-v" false="" version}
  >>>
  parameter_meta {
    bwtindexprefix: "BWT_Index_Prefix"
    reference_filename_formatfa: "Reference filename (format:fa)"
    f: "files with #1 mates reads (format:fa, fq, fq.gz)"
    f_two: "files with #2 mates reads (format:fa, fq, fq.gz)"
    number_of_threads: "number of threads [16]"
    size: "sequencing fragment size [500]"
    in_del: "maximal indel size [30]"
    ad: "minimal ALT allele count [5]"
    dup: "maximal PCR duplicates [5]"
    max_mm: "maximal mismatch rate in read alignment [0.05]"
    max_clip: "maximal clip size at either ends [5]"
    sam: "SAM output filename [NULL]"
    bam: "BAM output filename [NULL]"
    alg: "gapped alignment algorithm (option: nw|ksw2)"
    vcf: "VCF output filename [output.vcf]"
    gvc_f: "GVCF mode [false]"
    log: "log filename [job.log]"
    monomorphic: "report all loci which do not have any potential alternates."
    min_cnv: "the minimal cnv size to be reported [50]."
    min_gap: "the minimal gap(unmapped) size to be reported [50]."
    ploidy: "number of sets of chromosomes in a cell (1:monoploid, 2:diploid) [2]"
    output_multiple_alignments: "output multiple alignments"
    somatic: "detect somatic mutations [false]"
    no_vcf: "No VCF output [false]"
    pairedend_reads_interlaced: "paired-end reads are interlaced in the same file"
    filter: "apply variant filters (under test) [false]"
    version: "version"
  }
}