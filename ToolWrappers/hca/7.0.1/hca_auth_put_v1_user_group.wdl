version 1.0

task HcaAuthPutv1usergroup {
  input {
    String? user_id
    String? groups
  }
  command <<<
    hca auth put_v1_user_group \
      ~{if defined(user_id) then ("--user-id " +  '"' + user_id + '"') else ""} \
      ~{if defined(groups) then ("--groups " +  '"' + groups + '"') else ""}
  >>>
  parameter_meta {
    user_id: "User ID (email).\\n--action ACTION\\n"
    groups: ""
  }
  output {
    File out_stdout = stdout()
  }
}