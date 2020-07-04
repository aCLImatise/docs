version 1.0

task PhyluceProbeGetProbeBedFromLastzFiles {
  input {
    String? input_directory_containing
    String? output_directory_hold
  }
  command <<<
    phyluce_probe_get_probe_bed_from_lastz_files \
      ~{if defined(input_directory_containing) then ("--input " +  '"' + input_directory_containing + '"') else ""} \
      ~{if defined(output_directory_hold) then ("--output " +  '"' + output_directory_hold + '"') else ""}
  >>>
  parameter_meta {
    input_directory_containing: "The input directory containing lastz files"
    output_directory_hold: "The output directory to hold BED-formatted files"
  }
}