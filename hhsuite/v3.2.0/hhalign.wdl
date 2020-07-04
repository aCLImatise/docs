version 1.0

task Hhalign {
  input {
    File? inputquery_single_sequence
    File? inputtemplate_single_sequence
    Boolean? tags_slash_no_tags
    File? write_results_file
    File? o_a_three_m
    File? aa_three_m
    File? of_as
    Boolean? add_cons
    Boolean? hide_cons
    Boolean? hide_pred
    Boolean? hide_dssp
    Boolean? show_ss_conf
    Boolean? id
    Boolean? diff
    Boolean? cov
    Boolean? qid
    Boolean? qsc
    Boolean? mark
    Boolean? no_realign
    Boolean? mact
    Boolean? glob_slash_loc
    Int? verbose_mode_screen
  }
  command <<<
    hhalign \
      ~{if defined(inputquery_single_sequence) then ("-i " +  '"' + inputquery_single_sequence + '"') else ""} \
      ~{if defined(inputtemplate_single_sequence) then ("-t " +  '"' + inputtemplate_single_sequence + '"') else ""} \
      ~{true="-tags/-notags" false="" tags_slash_no_tags} \
      ~{if defined(write_results_file) then ("-o " +  '"' + write_results_file + '"') else ""} \
      ~{if defined(o_a_three_m) then ("-oa3m " +  '"' + o_a_three_m + '"') else ""} \
      ~{if defined(aa_three_m) then ("-aa3m " +  '"' + aa_three_m + '"') else ""} \
      ~{if defined(of_as) then ("-Ofas " +  '"' + of_as + '"') else ""} \
      ~{true="-add_cons" false="" add_cons} \
      ~{true="-hide_cons" false="" hide_cons} \
      ~{true="-hide_pred" false="" hide_pred} \
      ~{true="-hide_dssp" false="" hide_dssp} \
      ~{true="-show_ssconf" false="" show_ss_conf} \
      ~{true="-id" false="" id} \
      ~{true="-diff" false="" diff} \
      ~{true="-cov" false="" cov} \
      ~{true="-qid" false="" qid} \
      ~{true="-qsc" false="" qsc} \
      ~{true="-mark" false="" mark} \
      ~{true="-norealign" false="" no_realign} \
      ~{true="-mact" false="" mact} \
      ~{true="-glob/-loc" false="" glob_slash_loc} \
      ~{if defined(verbose_mode_screen) then ("-v " +  '"' + verbose_mode_screen + '"') else ""}
  >>>
  parameter_meta {
    inputquery_single_sequence: "input/query: single sequence or multiple sequence alignment (MSA) in a3m, a2m, or FASTA format, or HMM in hhm format"
    inputtemplate_single_sequence: "input/template: single sequence or multiple sequence alignment (MSA) in a3m, a2m, or FASTA format, or HMM in hhm format"
    tags_slash_no_tags: "do NOT / do neutralize His-, C-myc-, FLAG-tags, and trypsin  recognition sequence to background distribution (def=-notags)  "
    write_results_file: "write results in standard format to file (default=<infile.hhr>)"
    o_a_three_m: "write query alignment in a3m or PSI-BLAST format (-opsi) to file (default=none)"
    aa_three_m: "append query alignment in a3m (-aa3m) or PSI-BLAST format (-apsi )to file (default=none)"
    of_as: "write pairwise alignments in FASTA xor A2M (-Oa2m) xor A3M (-Oa3m) format   "
    add_cons: "generate consensus sequence as master sequence of query MSA (default=don't)"
    hide_cons: "don't show consensus sequence in alignments (default=show)     "
    hide_pred: "don't show predicted 2ndary structure in alignments (default=show)"
    hide_dssp: "don't show DSSP 2ndary structure in alignments (default=show)  "
    show_ss_conf: "show confidences for predicted 2ndary structure in alignments"
    id: "[0,100]  maximum pairwise sequence identity (def=90)"
    diff: "[0,inf[  filter MSAs by selecting most diverse set of sequences, keeping  at least this many seqs in each MSA block of length 50  Zero and non-numerical values turn off the filtering. (def=100) "
    cov: "[0,100]  minimum coverage with master sequence (%) (def=0)             "
    qid: "[0,100]  minimum sequence identity with master sequence (%) (def=0)    "
    qsc: "[0,100]  minimum score per column with master sequence (default=-20.0)    "
    mark: "do not filter out sequences marked by \">@\"in their name line  "
    no_realign: "do NOT realign displayed hits with MAC algorithm (def=realign)   "
    mact: "[0,1[    posterior prob threshold for MAC realignment controlling greedi-  ness at alignment ends: 0:global >0.1:local (default=0.35)       "
    glob_slash_loc: "use global/local alignment mode for searching/ranking (def=local)"
    verbose_mode_screen: "verbose mode: 0:no screen output  1:only warings  2: verbose (def=2)"
  }
}