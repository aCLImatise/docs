version 1.0

task Kraken2 {
  input {
    String? db
    String? threads
    Boolean? quick
    File? unclassified_out
    File? classified_out
    File? print_output_filename
    Float? confidence
    String? minimum_base_quality
    File? report
    Boolean? use_mpa_style
    Boolean? report_zero_counts
    Boolean? memory_mapping
    Boolean? paired
    Boolean? use_names
    Boolean? gzip_compressed
    Boolean? bzip_two_compressed
    String? minimum_hit_groups
  }
  command <<<
    kraken2 \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--quick" false="" quick} \
      ~{if defined(unclassified_out) then ("--unclassified-out " +  '"' + unclassified_out + '"') else ""} \
      ~{if defined(classified_out) then ("--classified-out " +  '"' + classified_out + '"') else ""} \
      ~{if defined(print_output_filename) then ("--output " +  '"' + print_output_filename + '"') else ""} \
      ~{if defined(confidence) then ("--confidence " +  '"' + confidence + '"') else ""} \
      ~{if defined(minimum_base_quality) then ("--minimum-base-quality " +  '"' + minimum_base_quality + '"') else ""} \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""} \
      ~{true="--use-mpa-style" false="" use_mpa_style} \
      ~{true="--report-zero-counts" false="" report_zero_counts} \
      ~{true="--memory-mapping" false="" memory_mapping} \
      ~{true="--paired" false="" paired} \
      ~{true="--use-names" false="" use_names} \
      ~{true="--gzip-compressed" false="" gzip_compressed} \
      ~{true="--bzip2-compressed" false="" bzip_two_compressed} \
      ~{if defined(minimum_hit_groups) then ("--minimum-hit-groups " +  '"' + minimum_hit_groups + '"') else ""}
  >>>
  parameter_meta {
    db: "Name for Kraken 2 DB (default: none)"
    threads: "Number of threads (default: 1)"
    quick: "Quick operation (use first hit or hits)"
    unclassified_out: "Print unclassified sequences to filename"
    classified_out: "Print classified sequences to filename"
    print_output_filename: "Print output to filename (default: stdout); \"-\" will suppress normal output"
    confidence: "Confidence score threshold (default: 0.0); must be in [0, 1]."
    minimum_base_quality: "Minimum base quality used in classification (def: 0, only effective with FASTQ input)."
    report: "Print a report with aggregrate counts/clade to file"
    use_mpa_style: "With --report, format report output like Kraken 1's kraken-mpa-report"
    report_zero_counts: "With --report, report counts for ALL taxa, even if counts are zero"
    memory_mapping: "Avoids loading database into RAM"
    paired: "The filenames provided have paired-end reads"
    use_names: "Print scientific names instead of just taxids"
    gzip_compressed: "Input files are compressed with gzip"
    bzip_two_compressed: "Input files are compressed with bzip2"
    minimum_hit_groups: "Minimum number of hit groups (overlapping k-mers sharing the same minimizer) needed to make a call (default: 2)"
  }
}