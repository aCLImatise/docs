version 1.0

task CreateCoordinates.py {
  input {
    String? input_vcf
    String? output_coordinates_write
  }
  command <<<
    create_coordinates.py \
      ~{if defined(input_vcf) then ("--input_vcf " +  '"' + input_vcf + '"') else ""} \
      ~{if defined(output_coordinates_write) then ("--output " +  '"' + output_coordinates_write + '"') else ""}
  >>>
  parameter_meta {
    input_vcf: "VCF input"
    output_coordinates_write: "output coordinates to write (default: stdout)"
  }
}