version 1.0

task Ribocount {
  input {
    String? read_lengths
    String? read_offsets
    Boolean? count_five
    Boolean? count_three
    String? html_file
    String? output_path
    Boolean? debug
    String? ribo_file
    String? transcriptome_fast_a
  }
  command <<<
    ribocount \
      ~{if defined(read_lengths) then ("--read_lengths " +  '"' + read_lengths + '"') else ""} \
      ~{if defined(read_offsets) then ("--read_offsets " +  '"' + read_offsets + '"') else ""} \
      ~{true="--count_five" false="" count_five} \
      ~{true="--count_three" false="" count_three} \
      ~{if defined(html_file) then ("--html_file " +  '"' + html_file + '"') else ""} \
      ~{if defined(output_path) then ("--output_path " +  '"' + output_path + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{if defined(ribo_file) then ("--ribo_file " +  '"' + ribo_file + '"') else ""} \
      ~{if defined(transcriptome_fast_a) then ("--transcriptome_fasta " +  '"' + transcriptome_fast_a + '"') else ""}
  >>>
  parameter_meta {
    read_lengths: "Read lengths to consider (default: 0). Multiple read lengths should be separated by commas. If multiple read lengths are specified, corresponding read offsets should also be specified. If you do not wish to apply an offset, please input 0 for the corresponding read length"
    read_offsets: "Read offsets (default: 0). Multiple read offsets should be separated by commas"
    count_five: "Flag. Output reads in 5' region"
    count_three: "Flag. Output reads in 3' region"
    html_file: "Output file for results (HTML)"
    output_path: "Files are saved in this directory"
    debug: "Flag. Produce debug output"
    ribo_file: "Ribo-Seq alignment file in BAM format"
    transcriptome_fast_a: "FASTA format file of the transcriptome"
  }
}