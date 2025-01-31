version 1.0

task OcModuleInstallbase {
  input {
    Boolean? force
  }
  command <<<
    oc module install_base \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0"
  }
  parameter_meta {
    force: "Overwrite existing modules"
  }
  output {
    File out_stdout = stdout()
  }
}