version 1.0

task ChorusNGSselect {
  input {
    String? input_bed_format
    String? output_bed_format
    Int? min
    Int? max
    Int? min_quantile
    Int? max_quantile
    Boolean? both_strand
    Boolean? single_strand
    String? distance
  }
  command <<<
    ChorusNGSselect \
      ~{if defined(input_bed_format) then ("--input " +  '"' + input_bed_format + '"') else ""} \
      ~{if defined(output_bed_format) then ("--output " +  '"' + output_bed_format + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(min_quantile) then ("--minquantile " +  '"' + min_quantile + '"') else ""} \
      ~{if defined(max_quantile) then ("--maxquantile " +  '"' + max_quantile + '"') else ""} \
      ~{true="--bothstrand" false="" both_strand} \
      ~{true="--singlestrand" false="" single_strand} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""}
  >>>
  parameter_meta {
    input_bed_format: "Input bed format probe file generated by ChorusNGSfilter"
    output_bed_format: "Output bed format probe file after k-mer score filter. (Default: filtered_output.bed)"
    min: "Minimum k-mer score, score < min value will be dropped. For example: 900. Incompatible with parameter '-q/-p' (Default: 0)"
    max: "Maximum k-mer score, score > max value will be dropped. For example: 2000. Incompatible with parameter '-q/-p' (Default: 10000000)"
    min_quantile: "Filter < min% quantile k-mer score, range from 0 to 1. For example: 0.25 means 25% quantile. Incompatible with parameter '-m/-l'. (Default: 0.1)"
    max_quantile: "Filter > max% quantile k-mer score, range from 0 to 1. For example: 0.75 means 75% quantile. Incompatible with parameter '-m/-l'. (Default: 0.9)"
    both_strand: "Keep both + and - strand probes. (Default is True)"
    single_strand: "Keep only + strand probes. Incompatible with parameter '-bs/--bothstrand'"
    distance: "Minimum distance between two adjacent probes. (Default: 25)"
  }
}