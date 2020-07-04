version 1.0

task MockinbirdPreprocessPrefix {
  input {
    String? log_level
    String mock_in_bird
    String preprocess
  }
  command <<<
    mockinbird preprocess prefix \
      ~{mock_in_bird} \
      ~{preprocess} \
      ~{if defined(log_level) then ("--log_level " +  '"' + log_level + '"') else ""}
  >>>
  parameter_meta {
    log_level: ""
    mock_in_bird: ""
    preprocess: ""
  }
}