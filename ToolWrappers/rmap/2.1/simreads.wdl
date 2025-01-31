version 1.0

task Simreads {
  input {
    File? name_output_file
    Boolean? reads
    Boolean? width
    Boolean? err
    Boolean? verbose
    Boolean? fast_q
    File? prob
    Boolean? seed
    Boolean? about
    String fast_a_chrom_files
  }
  command <<<
    simreads \
      ~{fast_a_chrom_files} \
      ~{if (name_output_file) then "-output" else ""} \
      ~{if (reads) then "-reads" else ""} \
      ~{if (width) then "-width" else ""} \
      ~{if (err) then "-err" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (fast_q) then "-fastq" else ""} \
      ~{if (prob) then "-prob" else ""} \
      ~{if (seed) then "-seed" else ""} \
      ~{if (about) then "-about" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name_output_file: "Name of output file (default: stdout)"
    reads: "number of reads to simulate"
    width: "width of reads to simulate"
    err: "maximum number of simulated sequencing errors"
    verbose: "print more run info"
    fast_q: "write FASTQ format reads"
    prob: "prb output file"
    seed: "random number seed"
    about: "print about message"
    fast_a_chrom_files: ""
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
    File out_prob = "${in_prob}"
  }
}