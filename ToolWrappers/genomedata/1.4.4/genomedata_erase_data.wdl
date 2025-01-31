version 1.0

task Genomedataerasedata {
  input {
    Array[String] track_name
    Boolean? verbose
  }
  command <<<
    genomedata_erase_data \
      ~{if defined(track_name) then ("--trackname " +  '"' + track_name + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    track_name: "tracknames to erase"
    verbose: "Print status updates and diagnostic messages"
  }
  output {
    File out_stdout = stdout()
  }
}