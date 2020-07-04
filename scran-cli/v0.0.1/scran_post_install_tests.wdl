version 1.0

task ScranPostInstallTests.sh {
  input {
    String? action
    String? use_existing_outputs
  }
  command <<<
    scran_post_install_tests.sh \
      ~{action} \
      ~{use_existing_outputs}
  >>>
  parameter_meta {
    action: ""
    use_existing_outputs: ""
  }
}