version 1.0

task CtseqAddUmis {
  input {
    String? umi_type
    String? umi_length
    String? dir
    String? forward_ext
    String? reverse_ext
    String? umi_ext
  }
  command <<<
    ctseq add_umis \
      ~{if defined(umi_type) then ("--umiType " +  '"' + umi_type + '"') else ""} \
      ~{if defined(umi_length) then ("--umiLength " +  '"' + umi_length + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(forward_ext) then ("--forwardExt " +  '"' + forward_ext + '"') else ""} \
      ~{if defined(reverse_ext) then ("--reverseExt " +  '"' + reverse_ext + '"') else ""} \
      ~{if defined(umi_ext) then ("--umiExt " +  '"' + umi_ext + '"') else ""}
  >>>
  parameter_meta {
    umi_type: "Choose 'separate' if the UMIs for the reads are contained in a separate fastq file where the line after the read name is the UMI. Choose 'inline' if the UMIs are already included in the forward/reverse read fastq files in the following format: '@M01806:488:0000 00000-J36GT:1:1101:15963:1363:GTAGGTAAAGTG 1:N:0:CGAGTAAT' where 'GTAGGTAAAGTG' is the UMI"
    umi_length: "Length of UMI sequence, e.g. 12 (required)"
    dir: "Path to directory containing fastq files; forward/reverse reads and umi files. If no '--dir' is specified, ctseq will look in your current directory."
    forward_ext: "Unique extension of fastq files containing FORWARD reads. Make sure to include '.gz' if your files are compressed (required)"
    reverse_ext: "Unique extension of fastq files containing REVERSE reads. Make sure to include '.gz' if your files are compressed (required)"
    umi_ext: "Unique extension of fastq files containing the UMIs (This flag is REQUIRED if UMIs are contained in separate fastq file). Make sure to include '.gz' if your files are compressed."
  }
}