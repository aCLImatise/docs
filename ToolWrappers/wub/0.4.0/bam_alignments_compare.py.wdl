version 1.0

task BamAlignmentsComparepy {
  input {
    Int? tolerance_when_performing
    Boolean? do_strict_comparison
    String? report_pdf_bamalignmentscomparepdf
    File? save_pickled_results
    File? save_results_none
    String? input_format_bam
    Boolean? be_quiet_print
    String bam_one
    String bam_two
  }
  command <<<
    bam_alignments_compare_py \
      ~{bam_one} \
      ~{bam_two} \
      ~{if defined(tolerance_when_performing) then ("-w " +  '"' + tolerance_when_performing + '"') else ""} \
      ~{if (do_strict_comparison) then "-g" else ""} \
      ~{if defined(report_pdf_bamalignmentscomparepdf) then ("-r " +  '"' + report_pdf_bamalignmentscomparepdf + '"') else ""} \
      ~{if defined(save_pickled_results) then ("-p " +  '"' + save_pickled_results + '"') else ""} \
      ~{if defined(save_results_none) then ("-t " +  '"' + save_results_none + '"') else ""} \
      ~{if defined(input_format_bam) then ("-f " +  '"' + input_format_bam + '"') else ""} \
      ~{if (be_quiet_print) then "-Q" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tolerance_when_performing: "Tolerance when performing coarse comparison of\\nalignments (50)."
    do_strict_comparison: "Do strict comparison of alignment flags."
    report_pdf_bamalignmentscomparepdf: "Report PDF (bam_alignments_compare.pdf)."
    save_pickled_results: "Save pickled results in this file\\n(bam_alignments_compare.pk)."
    save_results_none: "Save results in tsv format in this file (None)."
    input_format_bam: "Input format (BAM)."
    be_quiet_print: "Be quiet and do not print progress bar (False)."
    bam_one: "First input BAM file."
    bam_two: "Second input BAM file."
  }
  output {
    File out_stdout = stdout()
  }
}