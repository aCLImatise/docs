version 1.0

task GetPositionFromSam.pyFastafile {
  input {
    String? r
    String get_position_from_sam_do_tpy
    String sam_file
    String fast_a_file
  }
  command <<<
    get_position_from_sam.py fastafile \
      ~{get_position_from_sam_do_tpy} \
      ~{sam_file} \
      ~{fast_a_file} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    r: ""
    get_position_from_sam_do_tpy: ""
    sam_file: ""
    fast_a_file: ""
  }
}