version 1.0

task SamtoolsSort {
  input {
    Boolean? sort_by_read
    Boolean? use_outprefix_full
    Boolean? final_output_stdout
    Int? compression_level_from
    Int? at
    Int? max_memory_thread
    String in_dot_bam
    String out_dot_prefix
  }
  command <<<
    samtools sort \
      ~{in_dot_bam} \
      ~{out_dot_prefix} \
      ~{true="-n" false="" sort_by_read} \
      ~{true="-f" false="" use_outprefix_full} \
      ~{true="-o" false="" final_output_stdout} \
      ~{if defined(compression_level_from) then ("-l " +  '"' + compression_level_from + '"') else ""} \
      ~{if defined(at) then ("-@ " +  '"' + at + '"') else ""} \
      ~{if defined(max_memory_thread) then ("-m " +  '"' + max_memory_thread + '"') else ""}
  >>>
  parameter_meta {
    sort_by_read: "sort by read name"
    use_outprefix_full: "use <out.prefix> as full file name instead of prefix"
    final_output_stdout: "final output to stdout"
    compression_level_from: "compression level, from 0 to 9 [-1]"
    at: "number of sorting and compression threads [1]"
    max_memory_thread: "max memory per thread; suffix K/M/G recognized [768M]"
    in_dot_bam: ""
    out_dot_prefix: ""
  }
}