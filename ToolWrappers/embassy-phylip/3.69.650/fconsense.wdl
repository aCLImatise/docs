version 1.0

task Fconsense {
  input {
    Boolean? method
    Boolean? root
    Boolean? out_gr_no
    File additional_optional_qualifiers
  }
  command <<<
    fconsense \
      ~{additional_optional_qualifiers} \
      ~{if (method) then "-method" else ""} \
      ~{if (root) then "-root" else ""} \
      ~{if (out_gr_no) then "-outgrno" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    method: "menu       [mre] Consensus method (Values: s (strict\\nconsensus tree); mr (Majority Rule); mre\\n(Majority Rule (extended)); ml (Minimum\\nfraction (0.5 to 1.0)))"
    root: "toggle     [N] Trees to be treated as Rooted"
    out_gr_no: "integer    [0] Species number to use as outgroup\\n(Integer 0 or more)"
    additional_optional_qualifiers: "Additional (Optional) qualifiers (* if not always prompted):"
  }
  output {
    File out_stdout = stdout()
  }
}