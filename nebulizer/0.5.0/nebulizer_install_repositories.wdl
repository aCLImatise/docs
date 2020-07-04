version 1.0

task NebulizerInstallRepositories {
  input {
    Boolean? install_resolver_dependencies
    String? timeout
    Boolean? no_wait
    String galaxy
    File file
  }
  command <<<
    nebulizer install_repositories \
      ~{galaxy} \
      ~{file} \
      ~{true="--install-resolver-dependencies" false="" install_resolver_dependencies} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""} \
      ~{true="--no-wait" false="" no_wait}
  >>>
  parameter_meta {
    install_resolver_dependencies: "[yes|no] install dependencies through a resolver that supports installation (e.g. conda) (default is 'yes')"
    timeout: "wait up to TIMEOUT seconds for tool installationsto complete (default is 600)."
    no_wait: "don't wait for lengthy tool installations to complete."
    galaxy: ""
    file: ""
  }
}