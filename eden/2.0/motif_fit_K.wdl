version 1.0

task MotifFitK {
  input {
    String? i
    String? t
    String? d
    String motif
    String fit
  }
  command <<<
    motif fit K \
      ~{motif} \
      ~{fit} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    t: ""
    d: ""
    motif: ""
    fit: ""
  }
}