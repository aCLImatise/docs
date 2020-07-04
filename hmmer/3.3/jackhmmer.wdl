version 1.0

task Jackhmmer {
  input {
    String? set_maximum_number
    String? direct_output_file
    String? save_multiple_alignment
    String? tbl_out
    String? dom_tbl_out
    String? chk_hmm
    String? ch_kali
    Boolean? acc
    Boolean? no_ali
    Boolean? no_text_w
    String? text_w
    String? popen
    String? p_extend
    String? mx
    String? mx_file
    String? report_sequences_evalue
    String? report_sequences_threshold
    String? dome
    String? do_mt
    String? ince
    String? in_ct
    String? inc_dome
    String? inc_do_mt
    Boolean? max
    String? fone
    String? f_two
    String? f_three
    Boolean? no_bias
    String? frag_thresh
    Boolean? wpb
    Boolean? wgs_c
    Boolean? w_blosum
    Boolean? w_none
    String? wid
    Boolean? e_ent
    Boolean? e_ent_exp
    Boolean? ec_lust
    Boolean? en_one
    String? e_set
    String? ere
    String? e_sigma
    String? eid
    Boolean? p_none
    Boolean? pla_place
    String? eml
    String? emn
    String? evl
    String? evn
    String? efl
    String? efn
    String? eft
    Boolean? no_null_two
    String? set_comparisons_done
    String? do_mz
    String? seed
    String? q_format
    String? t_format
    String? cpu
    Boolean? options
    String seq_file
    String seq_db
  }
  command <<<
    jackhmmer \
      ~{seq_file} \
      ~{seq_db} \
      ~{if defined(set_maximum_number) then ("-N " +  '"' + set_maximum_number + '"') else ""} \
      ~{if defined(direct_output_file) then ("-o " +  '"' + direct_output_file + '"') else ""} \
      ~{if defined(save_multiple_alignment) then ("-A " +  '"' + save_multiple_alignment + '"') else ""} \
      ~{if defined(tbl_out) then ("--tblout " +  '"' + tbl_out + '"') else ""} \
      ~{if defined(dom_tbl_out) then ("--domtblout " +  '"' + dom_tbl_out + '"') else ""} \
      ~{if defined(chk_hmm) then ("--chkhmm " +  '"' + chk_hmm + '"') else ""} \
      ~{if defined(ch_kali) then ("--chkali " +  '"' + ch_kali + '"') else ""} \
      ~{true="--acc" false="" acc} \
      ~{true="--noali" false="" no_ali} \
      ~{true="--notextw" false="" no_text_w} \
      ~{if defined(text_w) then ("--textw " +  '"' + text_w + '"') else ""} \
      ~{if defined(popen) then ("--popen " +  '"' + popen + '"') else ""} \
      ~{if defined(p_extend) then ("--pextend " +  '"' + p_extend + '"') else ""} \
      ~{if defined(mx) then ("--mx " +  '"' + mx + '"') else ""} \
      ~{if defined(mx_file) then ("--mxfile " +  '"' + mx_file + '"') else ""} \
      ~{if defined(report_sequences_evalue) then ("-E " +  '"' + report_sequences_evalue + '"') else ""} \
      ~{if defined(report_sequences_threshold) then ("-T " +  '"' + report_sequences_threshold + '"') else ""} \
      ~{if defined(dome) then ("--domE " +  '"' + dome + '"') else ""} \
      ~{if defined(do_mt) then ("--domT " +  '"' + do_mt + '"') else ""} \
      ~{if defined(ince) then ("--incE " +  '"' + ince + '"') else ""} \
      ~{if defined(in_ct) then ("--incT " +  '"' + in_ct + '"') else ""} \
      ~{if defined(inc_dome) then ("--incdomE " +  '"' + inc_dome + '"') else ""} \
      ~{if defined(inc_do_mt) then ("--incdomT " +  '"' + inc_do_mt + '"') else ""} \
      ~{true="--max" false="" max} \
      ~{if defined(fone) then ("--F1 " +  '"' + fone + '"') else ""} \
      ~{if defined(f_two) then ("--F2 " +  '"' + f_two + '"') else ""} \
      ~{if defined(f_three) then ("--F3 " +  '"' + f_three + '"') else ""} \
      ~{true="--nobias" false="" no_bias} \
      ~{if defined(frag_thresh) then ("--fragthresh " +  '"' + frag_thresh + '"') else ""} \
      ~{true="--wpb" false="" wpb} \
      ~{true="--wgsc" false="" wgs_c} \
      ~{true="--wblosum" false="" w_blosum} \
      ~{true="--wnone" false="" w_none} \
      ~{if defined(wid) then ("--wid " +  '"' + wid + '"') else ""} \
      ~{true="--eent" false="" e_ent} \
      ~{true="--eentexp" false="" e_ent_exp} \
      ~{true="--eclust" false="" ec_lust} \
      ~{true="--enone" false="" en_one} \
      ~{if defined(e_set) then ("--eset " +  '"' + e_set + '"') else ""} \
      ~{if defined(ere) then ("--ere " +  '"' + ere + '"') else ""} \
      ~{if defined(e_sigma) then ("--esigma " +  '"' + e_sigma + '"') else ""} \
      ~{if defined(eid) then ("--eid " +  '"' + eid + '"') else ""} \
      ~{true="--pnone" false="" p_none} \
      ~{true="--plaplace" false="" pla_place} \
      ~{if defined(eml) then ("--EmL " +  '"' + eml + '"') else ""} \
      ~{if defined(emn) then ("--EmN " +  '"' + emn + '"') else ""} \
      ~{if defined(evl) then ("--EvL " +  '"' + evl + '"') else ""} \
      ~{if defined(evn) then ("--EvN " +  '"' + evn + '"') else ""} \
      ~{if defined(efl) then ("--EfL " +  '"' + efl + '"') else ""} \
      ~{if defined(efn) then ("--EfN " +  '"' + efn + '"') else ""} \
      ~{if defined(eft) then ("--Eft " +  '"' + eft + '"') else ""} \
      ~{true="--nonull2" false="" no_null_two} \
      ~{if defined(set_comparisons_done) then ("-Z " +  '"' + set_comparisons_done + '"') else ""} \
      ~{if defined(do_mz) then ("--domZ " +  '"' + do_mz + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(q_format) then ("--qformat " +  '"' + q_format + '"') else ""} \
      ~{if defined(t_format) then ("--tformat " +  '"' + t_format + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    set_maximum_number: ": set maximum number of iterations to <n>  [5]  (n>0)"
    direct_output_file: ": direct output to file <f>, not stdout"
    save_multiple_alignment: ": save multiple alignment of hits to file <f>"
    tbl_out: ": save parseable table of per-sequence hits to file <f>"
    dom_tbl_out: ": save parseable table of per-domain hits to file <f>"
    chk_hmm: ": save HMM checkpoints to files <f>-<iteration>.hmm"
    ch_kali: ": save alignment checkpoints to files <f>-<iteration>.sto"
    acc: ": prefer accessions over names in output"
    no_ali: ": don't output alignments, so output is smaller"
    no_text_w: ": unlimit ASCII text output line width"
    text_w: ": set max width of ASCII text output lines  [120]  (n>=120)"
    popen: ": gap open probability"
    p_extend: ": gap extend probability"
    mx: ": substitution score matrix choice (of some built-in matrices)"
    mx_file: ": read substitution score matrix from file <f>"
    report_sequences_evalue: ": report sequences <= this E-value threshold in output  [10.0]  (x>0)"
    report_sequences_threshold: ": report sequences >= this score threshold in output"
    dome: ": report domains <= this E-value threshold in output  [10.0]  (x>0)"
    do_mt: ": report domains >= this score cutoff in output"
    ince: ": consider sequences <= this E-value threshold as significant"
    in_ct: ": consider sequences >= this score threshold as significant"
    inc_dome: ": consider domains <= this E-value threshold as significant"
    inc_do_mt: ": consider domains >= this score threshold as significant"
    max: ": Turn all heuristic filters off (less speed, more power)"
    fone: ": Stage 1 (MSV) threshold: promote hits w/ P <= F1  [0.02]"
    f_two: ": Stage 2 (Vit) threshold: promote hits w/ P <= F2  [1e-3]"
    f_three: ": Stage 3 (Fwd) threshold: promote hits w/ P <= F3  [1e-5]"
    no_bias: ": turn off composition bias filter"
    frag_thresh: ": if L <= x*alen, tag sequence as a fragment  [0.5]  (0<=x<=1)"
    wpb: ": Henikoff position-based weights  [default]"
    wgs_c: ": Gerstein/Sonnhammer/Chothia tree weights"
    w_blosum: ": Henikoff simple filter weights"
    w_none: ": don't do any relative weighting; set all to 1"
    wid: ": for --wblosum: set identity cutoff  [0.62]  (0<=x<=1)"
    e_ent: ": adjust eff seq # to achieve relative entropy target"
    e_ent_exp: ": adjust eff seq # to reach rel. ent. target using exp scaling"
    ec_lust: ": eff seq # is # of single linkage clusters"
    en_one: ": no effective seq # weighting: just use nseq"
    e_set: ": set eff seq # for all models to <x>"
    ere: ": for --eent[exp]: set minimum rel entropy/position to <x>"
    e_sigma: ": for --eent[exp]: set sigma param to <x>"
    eid: ": for --eclust: set fractional identity cutoff to <x>"
    p_none: ": don't use any prior; parameters are frequencies"
    pla_place: ": use a Laplace +1 prior"
    eml: ": length of sequences for MSV Gumbel mu fit  [200]  (n>0)"
    emn: ": number of sequences for MSV Gumbel mu fit  [200]  (n>0)"
    evl: ": length of sequences for Viterbi Gumbel mu fit  [200]  (n>0)"
    evn: ": number of sequences for Viterbi Gumbel mu fit  [200]  (n>0)"
    efl: ": length of sequences for Forward exp tail tau fit  [100]  (n>0)"
    efn: ": number of sequences for Forward exp tail tau fit  [200]  (n>0)"
    eft: ": tail mass for Forward exponential tail tau fit  [0.04]  (0<x<1)"
    no_null_two: ": turn off biased composition score corrections"
    set_comparisons_done: ": set # of comparisons done, for E-value calculation"
    do_mz: ": set # of significant seqs, for domain E-value calculation"
    seed: ": set RNG seed to <n> (if 0: one-time arbitrary seed)  [42]"
    q_format: ": assert query <seqfile> is in format <s>: no autodetection"
    t_format: ": assert target <seqdb> is in format <s>>: no autodetection"
    cpu: ": number of parallel CPU workers to use for multithreads  [2]"
    options: ""
    seq_file: ""
    seq_db: ""
  }
}