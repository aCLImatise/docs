version 1.0

task MatecleverComputeRois {
  input {
    String? distance_deletion_breakpoints
    Int? maximum_deletion_length
  }
  command <<<
    mateclever-compute-rois \
      ~{if defined(distance_deletion_breakpoints) then ("-d " +  '"' + distance_deletion_breakpoints + '"') else ""} \
      ~{if defined(maximum_deletion_length) then ("-m " +  '"' + maximum_deletion_length + '"') else ""}
  >>>
  parameter_meta {
    distance_deletion_breakpoints: "Distance from deletion breakpoints to be included (default: 750)."
    maximum_deletion_length: "Maximum deletion length to be considered (default: none)."
  }
}