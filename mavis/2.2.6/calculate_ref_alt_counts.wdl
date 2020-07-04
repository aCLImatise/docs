version 1.0

task CalculateRefAltCounts {
  input {
    File? path_output_file
    Array[File] path_input_mavis
    String? filepath__bam
    File? reference
    String? event_size
    String? buffer
  }
  command <<<
    calculate_ref_alt_counts \
      ~{if defined(path_output_file) then ("--output " +  '"' + path_output_file + '"') else ""} \
      ~{if defined(path_input_mavis) then ("--input " +  '"' + path_input_mavis + '"') else ""} \
      ~{if defined(filepath__bam) then ("-b " +  '"' + filepath__bam + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(event_size) then ("--event_size " +  '"' + event_size + '"') else ""} \
      ~{if defined(buffer) then ("--buffer " +  '"' + buffer + '"') else ""}
  >>>
  parameter_meta {
    path_output_file: "Path to the output file"
    path_input_mavis: "Path to the Input mavis summary file"
    filepath__bam: "FILEPATH, --bam <name> FILEPATH Name for the library and the path to its bam file"
    reference: "Path to the Input reference genome fasta file"
    event_size: "The maximum size of a indel event to calculate the ref/alt counts"
    buffer: "The amount of overhang (accounting for repeats) a read must have in order to be considered"
  }
}