version 1.0

task MbAdapterClipperPrime3Adapter {
  input {
    String? clip_len
    Int? min_len
    String mb_adapter_clipper
  }
  command <<<
    mb-adapter-clipper prime3_adapter \
      ~{mb_adapter_clipper} \
      ~{if defined(clip_len) then ("--clip_len " +  '"' + clip_len + '"') else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""}
  >>>
  parameter_meta {
    clip_len: ""
    min_len: ""
    mb_adapter_clipper: ""
  }
}