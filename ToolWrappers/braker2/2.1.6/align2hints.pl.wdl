version 1.0

task Align2hintspl {
  input {
    Boolean? skip_alignment_out
    String? prg
    Boolean? in
    Int? cds_part_cut_off
    Int? max_intron_len
    Int? min_intron_len
    Int? priority
    String? source
    Boolean? cds
    String _contains_cds
    String hints_dot
  }
  command <<<
    align2hints_pl \
      ~{_contains_cds} \
      ~{hints_dot} \
      ~{if (skip_alignment_out) then "-skipalignmentout" else ""} \
      ~{if defined(prg) then ("--prg " +  '"' + prg + '"') else ""} \
      ~{if (in) then "--in" else ""} \
      ~{if defined(cds_part_cut_off) then ("--CDSpart_cutoff " +  '"' + cds_part_cut_off + '"') else ""} \
      ~{if defined(max_intron_len) then ("--maxintronlen " +  '"' + max_intron_len + '"') else ""} \
      ~{if defined(min_intron_len) then ("--minintronlen " +  '"' + min_intron_len + '"') else ""} \
      ~{if defined(priority) then ("--priority " +  '"' + priority + '"') else ""} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""} \
      ~{if (cds) then "--CDS" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/braker2:2.1.6--hdfd78af_1"
  }
  parameter_meta {
    skip_alignment_out: "... -o gthfile"
    prg: "|exonerate|spaln|scipio"
    in: "input file from gth (gff3), spaln (gff3) or exonerate"
    cds_part_cut_off: "This many bp are cut off of each CDSpart hint\\nw.r.t. the cds (default 15)."
    max_intron_len: "Alignments with longer gaps are discarded\\n(default 350000)."
    min_intron_len: "Alignments with gaps shorter than this and longer\\nthan maxgaplen are discarded (default 41)."
    priority: "Priority of hint group (default 4)."
    source: "Source identifier (default 'P')"
    cds: "Do not output CDSpart hints, but complete CDS"
    _contains_cds: "--out                contains CDSpart, CDS and intron hints"
    hints_dot: "--genome_file=s          if prg is exonerate and start hints shall be"
  }
  output {
    File out_stdout = stdout()
  }
}