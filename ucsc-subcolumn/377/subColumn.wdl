version 1.0

task SubColumn {
  input {
    Boolean? list
    File? miss
    String column
    String in_dot_tab
    String sub_dot_tab
    String out_dot_tab
  }
  command <<<
    subColumn \
      ~{column} \
      ~{in_dot_tab} \
      ~{sub_dot_tab} \
      ~{out_dot_tab} \
      ~{true="-list" false="" list} \
      ~{if defined(miss) then ("-miss " +  '"' + miss + '"') else ""}
  >>>
  parameter_meta {
    list: "- Column is a comma-separated list.  Substitute all elements in list"
    miss: "- Print misses to this file instead of aborting"
    column: ""
    in_dot_tab: ""
    sub_dot_tab: ""
    out_dot_tab: ""
  }
}