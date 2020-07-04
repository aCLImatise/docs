version 1.0

task _wordcount {
  input {
    Boolean? word_size
  }
  command <<<
    _wordcount \
      ~{true="-wordsize" false="" word_size}
  >>>
  parameter_meta {
    word_size: "integer    [@($(acdprotein)? 2 : 4)] Word size (Integer 1 or more)"
  }
}