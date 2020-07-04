version 1.0

task BigBedToBed {
  input {
    String? chrom
    String? start
    String? end
    String? max_items
    Boolean? udc_dir
    String input_dot_bb
    String output_dot_bed
  }
  command <<<
    bigBedToBed \
      ~{input_dot_bb} \
      ~{output_dot_bed} \
      ~{if defined(chrom) then ("-chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(start) then ("-start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("-end " +  '"' + end + '"') else ""} \
      ~{if defined(max_items) then ("-maxItems " +  '"' + max_items + '"') else ""} \
      ~{true="-udcDir" false="" udc_dir}
  >>>
  parameter_meta {
    chrom: "- if set restrict output to given chromosome"
    start: "- if set, restrict output to only that over start"
    end: "- if set, restict output to only that under end"
    max_items: "- if set, restrict output to first N items"
    udc_dir: "=/dir/to/cache - place to put cache for remote bigBed/bigWigs"
    input_dot_bb: ""
    output_dot_bed: ""
  }
}