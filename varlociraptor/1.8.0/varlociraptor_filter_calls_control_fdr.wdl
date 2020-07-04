version 1.0

task VarlociraptorFilterCallsControlFdr {
  input {
    String? events
    String? fdr
    Int? maxlen
    Int? min_len
    String? var
    String calls_dot_bcf
  }
  command <<<
    varlociraptor filter-calls control-fdr \
      ~{calls_dot_bcf} \
      ~{if defined(events) then ("--events " +  '"' + events + '"') else ""} \
      ~{if defined(fdr) then ("--fdr " +  '"' + fdr + '"') else ""} \
      ~{if defined(maxlen) then ("--maxlen " +  '"' + maxlen + '"') else ""} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""} \
      ~{if defined(var) then ("--var " +  '"' + var + '"') else ""}
  >>>
  parameter_meta {
    events: "...    Events to consider."
    fdr: "FDR to control for."
    maxlen: "Maximum indel length to consider (exclusive)."
    min_len: "Minimum indel length to consider."
    var: "Variant type to consider. [possible values: INS, DEL, SNV, MNV, REF]"
    calls_dot_bcf: ""
  }
}