version 1.0

task Callstate {
  input {
    String? threads
    String? output_bed_file
    String? base_depth_output
    String? min_base_qual
    String? min_mapq
    String? min_depth
    String? max_low_mapq
    String? max_depth
    String? min_depth_low_mapq
    String? low_mapq_frac
    String? flag
    String bed
    String bam
  }
  command <<<
    callstate \
      ~{bed} \
      ~{bam} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(output_bed_file) then ("--output " +  '"' + output_bed_file + '"') else ""} \
      ~{if defined(base_depth_output) then ("--base-depth-output " +  '"' + base_depth_output + '"') else ""} \
      ~{if defined(min_base_qual) then ("--min-base-qual " +  '"' + min_base_qual + '"') else ""} \
      ~{if defined(min_mapq) then ("--min-mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(min_depth) then ("--min-depth " +  '"' + min_depth + '"') else ""} \
      ~{if defined(max_low_mapq) then ("--max-low-mapq " +  '"' + max_low_mapq + '"') else ""} \
      ~{if defined(max_depth) then ("--max-depth " +  '"' + max_depth + '"') else ""} \
      ~{if defined(min_depth_low_mapq) then ("--min-depth-low-mapq " +  '"' + min_depth_low_mapq + '"') else ""} \
      ~{if defined(low_mapq_frac) then ("--low-mapq-frac " +  '"' + low_mapq_frac + '"') else ""} \
      ~{if defined(flag) then ("--flag " +  '"' + flag + '"') else ""}
  >>>
  parameter_meta {
    threads: "Number of BAM decompression threads [default: 4]"
    output_bed_file: "The output BED file"
    base_depth_output: "If a file name is given, per-base depth will be written to this file"
    min_base_qual: "The minimum base quality for a base to contribute to QC depth [default: 10]"
    min_mapq: "The minimum mapping quality of reads to count as QC depth [default: 10]"
    min_depth: "The minimum QC read depth before a read is considered callable [default: 20]"
    max_low_mapq: "The maximum value of MAPQ before a read is considered as problematic mapped read. [default: 1]"
    max_depth: "The maximum read depth before a locus is considered high coverage [default: -1]"
    min_depth_low_mapq: "Minimum read depth before a locus is considered candidate for poorly mapped [default: 10]"
    low_mapq_frac: "If the fraction of low mapping reads exceeds this value, the site is considered poorly mapped [default: 0.5]"
    flag: "exclude reads with any of the bits in FLAG set [default: 1796]"
    bed: ""
    bam: ""
  }
}