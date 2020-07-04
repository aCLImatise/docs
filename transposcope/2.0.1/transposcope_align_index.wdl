version 1.0

task TransposcopeAlignIndex {
  input {
    String? genes
    String? group_one
    String transpo_scope
    String align
  }
  command <<<
    transposcope align index \
      ~{transpo_scope} \
      ~{align} \
      ~{if defined(genes) then ("--genes " +  '"' + genes + '"') else ""} \
      ~{if defined(group_one) then ("--group1 " +  '"' + group_one + '"') else ""}
  >>>
  parameter_meta {
    genes: ""
    group_one: ""
    transpo_scope: ""
    align: ""
  }
}