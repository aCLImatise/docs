version 1.0

task MentaLiSTjlCallAlgorithm {
  input {
    String? t
    String? db
    String? o
    String mentalist_dot_jl
    String var_call
  }
  command <<<
    MentaLiST_jl call algorithm_ \
      ~{mentalist_dot_jl} \
      ~{var_call} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    t: ""
    db: ""
    o: ""
    mentalist_dot_jl: ""
    var_call: ""
  }
  output {
    File out_stdout = stdout()
  }
}