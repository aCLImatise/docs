version 1.0

task Contig2contigContigfile {
  input {
    String contig_two_contig
    String seq_file
    String contig_file
    String out_contig_file
  }
  command <<<
    contig2contig contigfile \
      ~{contig_two_contig} \
      ~{seq_file} \
      ~{contig_file} \
      ~{out_contig_file}
  >>>
  parameter_meta {
    contig_two_contig: ""
    seq_file: ""
    contig_file: ""
    out_contig_file: ""
  }
}