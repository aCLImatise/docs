version 1.0

task WgblimpDeletealloutput {
  input {
    Boolean? dry_run
    Boolean? yes
    String config_yaml
  }
  command <<<
    wg_blimp delete_all_output \
      ~{config_yaml} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (yes) then "--yes" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wg-blimp:0.9.8--pyh5e36f6f_0"
  }
  parameter_meta {
    dry_run: "Only dry-run deleting the pipeline output."
    yes: "Confirm the action without prompting."
    config_yaml: ""
  }
  output {
    File out_stdout = stdout()
  }
}