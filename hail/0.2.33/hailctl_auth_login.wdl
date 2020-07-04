version 1.0

task HailctlAuthLogin {
  input {
    String? namespace
  }
  command <<<
    hailctl auth login \
      ~{if defined(namespace) then ("--namespace " +  '"' + namespace + '"') else ""}
  >>>
  parameter_meta {
    namespace: "Specify namespace for auth server. (default: from deploy configuration)"
  }
}