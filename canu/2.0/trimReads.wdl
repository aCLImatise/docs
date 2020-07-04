version 1.0

task TrimReads {
  input {
    String? path_read_store
    String? path_overlap_store
    String? output_prefix_logging
    String? limit_processing_only
    String? ci
    String? co
    String? ignore_overlaps_more
    String? ol
    String? oc
    String? minlength
  }
  command <<<
    trimReads \
      ~{if defined(path_read_store) then ("-S " +  '"' + path_read_store + '"') else ""} \
      ~{if defined(path_overlap_store) then ("-O " +  '"' + path_overlap_store + '"') else ""} \
      ~{if defined(output_prefix_logging) then ("-o " +  '"' + output_prefix_logging + '"') else ""} \
      ~{if defined(limit_processing_only) then ("-t " +  '"' + limit_processing_only + '"') else ""} \
      ~{if defined(ci) then ("-Ci " +  '"' + ci + '"') else ""} \
      ~{if defined(co) then ("-Co " +  '"' + co + '"') else ""} \
      ~{if defined(ignore_overlaps_more) then ("-e " +  '"' + ignore_overlaps_more + '"') else ""} \
      ~{if defined(ol) then ("-ol " +  '"' + ol + '"') else ""} \
      ~{if defined(oc) then ("-oc " +  '"' + oc + '"') else ""} \
      ~{if defined(minlength) then ("-minlength " +  '"' + minlength + '"') else ""}
  >>>
  parameter_meta {
    path_read_store: "path to read store"
    path_overlap_store: "path to overlap store"
    output_prefix_logging: "output prefix, for logging"
    limit_processing_only: "limit processing to only reads from bgn to end (inclusive)"
    ci: "path to input clear ranges (NOT SUPPORTED)"
    co: "path to ouput clear ranges"
    ignore_overlaps_more: "ignore overlaps with more than 'erate' percent error"
    ol: "the minimum evidence overlap length"
    oc: "the minimum evidence overlap coverage evidence overlaps must overlap by 'l' bases to be joined, and must be at least 'c' deep to be retained"
    minlength: "reads trimmed below this many bases are deleted"
  }
}