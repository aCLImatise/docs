version 1.0

task Exonerate2hints.pl {
  input {
    String? priority
    String? min_intron_len
    String? max_intron_len
    String? cds_part_cut_off
    String? source
  }
  command <<<
    exonerate2hints.pl \
      ~{if defined(priority) then ("--priority " +  '"' + priority + '"') else ""} \
      ~{if defined(min_intron_len) then ("--minintronlen " +  '"' + min_intron_len + '"') else ""} \
      ~{if defined(max_intron_len) then ("--maxintronlen " +  '"' + max_intron_len + '"') else ""} \
      ~{if defined(cds_part_cut_off) then ("--CDSpart_cutoff " +  '"' + cds_part_cut_off + '"') else ""} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""}
  >>>
  parameter_meta {
    priority: "priority of hint group (default 4)"
    min_intron_len: "alignments with gaps shorter than this and longer than maxgaplen are discarded (default 41)"
    max_intron_len: "alignments with longer gaps are discarded (default 350000"
    cds_part_cut_off: "this many bp are cut off of each CDSpart hint w.r.t. the exonerate cds (default 9)"
    source: "source identifier (default 'P')"
  }
}