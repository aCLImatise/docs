version 1.0

task FcGetReadCtgMap {
  input {
    String? basedir
  }
  command <<<
    fc_get_read_ctg_map \
      ~{if defined(basedir) then ("--basedir " +  '"' + basedir + '"') else ""}
  >>>
  parameter_meta {
    basedir: "the base working dir of a FALCON assembly (default: ./)"
  }
}