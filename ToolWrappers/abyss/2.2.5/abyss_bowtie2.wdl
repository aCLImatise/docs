version 1.0

task Abyssbowtie2 {
  command <<<
    abyss_bowtie2
  >>>
  runtime {
    docker: "quay.io/biocontainers/abyss:2.2.5--ha4ec83a_0"
  }
  output {
    File out_stdout = stdout()
  }
}