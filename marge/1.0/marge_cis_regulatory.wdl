version 1.0

task MargeCisRegulatory {
  input {
    String marge
    String is
    String a
    String free
    String software
    String to
    String predict
    String key
    String regulated
    String genes
    String and
    String cis_regulatory
    String regions
    String in
    String human
    String or
    String mouse_dot
  }
  command <<<
    marge cis-regulatory \
      ~{marge} \
      ~{is} \
      ~{a} \
      ~{free} \
      ~{software} \
      ~{to} \
      ~{predict} \
      ~{key} \
      ~{regulated} \
      ~{genes} \
      ~{and} \
      ~{cis_regulatory} \
      ~{regions} \
      ~{in} \
      ~{human} \
      ~{or} \
      ~{mouse_dot}
  >>>
  parameter_meta {
    marge: ""
    is: ""
    a: ""
    free: ""
    software: ""
    to: ""
    predict: ""
    key: ""
    regulated: ""
    genes: ""
    and: ""
    cis_regulatory: ""
    regions: ""
    in: ""
    human: ""
    or: ""
    mouse_dot: ""
  }
}