version 1.0

task TrioMaternalContamination {
  input {
    File? bam_m
    File? bam_f
    File? bam_c
    Int? min_depth
    Int? min_alt_count
    Int? build
    File? out
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    TrioMaternalContamination \
      ~{if defined(bam_m) then ("-bam_m " +  '"' + bam_m + '"') else ""} \
      ~{if defined(bam_f) then ("-bam_f " +  '"' + bam_f + '"') else ""} \
      ~{if defined(bam_c) then ("-bam_c " +  '"' + bam_c + '"') else ""} \
      ~{if defined(min_depth) then ("-min_depth " +  '"' + min_depth + '"') else ""} \
      ~{if defined(min_alt_count) then ("-min_alt_count " +  '"' + min_alt_count + '"') else ""} \
      ~{if defined(build) then ("-build " +  '"' + build + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam_m: "Input BAM file of mother."
    bam_f: "Input BAM file of father."
    bam_c: "Input BAM file of child."
    min_depth: "Minimum depth for calling SNPs.\\nDefault value: '3'"
    min_alt_count: "Minimum number of alternate observations for calling a SNP.\\nDefault value: '1'"
    build: "Genome build used to generate the input.\\nDefault value: 'hg19'\\nValid: 'hg19,hg38'"
    out: "Output file. If unset, writes to STDOUT.\\nDefault value: ''"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}