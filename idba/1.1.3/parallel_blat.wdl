version 1.0

task ParallelBlat {
  input {
    String? num_threads
    String? similar
    String ref_dot_fa
    String query_dot_fa
  }
  command <<<
    parallel_blat \
      ~{ref_dot_fa} \
      ~{query_dot_fa} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(similar) then ("--similar " +  '"' + similar + '"') else ""}
  >>>
  parameter_meta {
    num_threads: "(=8)             number of threads"
    similar: "(=0.95)              similarity"
    ref_dot_fa: ""
    query_dot_fa: ""
  }
}