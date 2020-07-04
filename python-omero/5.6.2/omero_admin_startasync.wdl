version 1.0

task OmeroAdminStartasync {
  input {
    Boolean? force_rewrite
    String? user
    String? password
    File file
    String targets
  }
  command <<<
    omero admin startasync \
      ~{file} \
      ~{targets} \
      ~{true="--force-rewrite" false="" force_rewrite} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""}
  >>>
  parameter_meta {
    force_rewrite: "Force the configuration to be rewritten before checking the server status"
    user: "Windows Service Log On As user name."
    password: "Windows Service Log On As user password."
    file: "Application descriptor. If not provided, a default will be used"
    targets: "Targets within the application descriptor which  should  be activated. Common values are: \"debug\", \"trace\" "
  }
}