version 1.0

task MedakaMethylation {
  input {
    Boolean? debug
    Boolean? quiet
    Int guppy_two_sam
    String call_methylation_bam
  }
  command <<<
    medaka methylation \
      ~{guppy_two_sam} \
      ~{call_methylation_bam} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "Verbose logging of debug information. (default: 20)"
    quiet: "Minimal logging; warnings only). (default: 20)"
    guppy_two_sam: "Convert Guppy .fast5 files with methylation calls to .sam\\nfile, output to stdout."
    call_methylation_bam: "Call methylation from .bam file."
  }
  output {
    File out_stdout = stdout()
  }
}