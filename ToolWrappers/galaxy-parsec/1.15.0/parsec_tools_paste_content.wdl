version 1.0

task ParsecToolsPasteContent {
  input {
    String content
    String history_id
  }
  command <<<
    parsec tools paste_content \
      ~{content} \
      ~{history_id}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    content: ""
    history_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}