version 1.0

task NewSpeciespl {
  input {
    File? augustus_config_path
    Boolean? silent
    Boolean? ignore
    Boolean? prokaryotic
  }
  command <<<
    new_species_pl \
      ~{if defined(augustus_config_path) then ("--AUGUSTUS_CONFIG_PATH " +  '"' + augustus_config_path + '"') else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (ignore) then "--ignore" else ""} \
      ~{if (prokaryotic) then "--prokaryotic" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0"
  }
  parameter_meta {
    augustus_config_path: "full path to augustus/config directory"
    silent: "suppress help messages"
    ignore: "don't do anything if species already exists (default: off)"
    prokaryotic: "use prokaryotic template instead of eukaryotic template"
  }
  output {
    File out_stdout = stdout()
  }
}