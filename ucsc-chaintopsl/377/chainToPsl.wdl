version 1.0

task ChainToPsl {
  input {
    String in_dot_chain
    String t_sizes
    String q_sizes
    String target_dot_lst
    String query_dot_lst
    String out_dot_psl
  }
  command <<<
    chainToPsl \
      ~{in_dot_chain} \
      ~{t_sizes} \
      ~{q_sizes} \
      ~{target_dot_lst} \
      ~{query_dot_lst} \
      ~{out_dot_psl}
  >>>
  parameter_meta {
    in_dot_chain: ""
    t_sizes: ""
    q_sizes: ""
    target_dot_lst: ""
    query_dot_lst: ""
    out_dot_psl: ""
  }
}