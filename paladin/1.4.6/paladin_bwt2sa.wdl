version 1.0

task PaladinBwt2sa {
  input {
    String? i
    String in_dot_bwt
    String out_dots_a
  }
  command <<<
    paladin bwt2sa \
      ~{in_dot_bwt} \
      ~{out_dots_a} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    in_dot_bwt: ""
    out_dots_a: ""
  }
}