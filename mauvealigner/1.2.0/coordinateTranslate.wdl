version 1.0

task CoordinateTranslate {
  input {
    String x_mfa_alignment
    String alignment_coordinate_file
  }
  command <<<
    coordinateTranslate \
      ~{x_mfa_alignment} \
      ~{alignment_coordinate_file}
  >>>
  parameter_meta {
    x_mfa_alignment: ""
    alignment_coordinate_file: ""
  }
}