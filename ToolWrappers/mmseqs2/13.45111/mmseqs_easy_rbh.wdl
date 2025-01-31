version 1.0

task MmseqsEasyrbh {
  input {
    Int? comp_bias_corr
    Boolean? add_self_matches
    File? seed_sub_mat
    Float? sensitivity_faster_fast
    Int? kmer_length_set
    Int? k_score
    Int? alph_size
    Int? max_seqs
    Int? split
    Int? split_mode
    Int? split_memory_limit
    Boolean? diag_score
    Int? exact_km_er_matching
    Int? mask
    Int? mask_lower_case
    Int? min_un_gapped_score
    Int? spaced_km_er_mode
    String? spaced_km_er_pattern
    File? local_tmp
    Int? disk_space_limit
    Boolean? add_string_convert
    Int? alignment_mode
    Int? alignment_output_mode
    Boolean? wrapped_scoring
    Float? list_matches_evalue
    Float? min_seq_id
    Int? min_aln_len
    Int? seq_id_mode
    Int? alt_ali
    Float? list_matches_fraction
    Int? cov_mode
    Int? max_rejected
    Int? max_accept
    Float? score_bias
    Boolean? realign
    Float? realign_score_bias
    Int? realign_max_seqs
    Int? gap_open
    Int? gap_extend
    Int? z_drop
    Int? exhaustive_search_filter
    Float? pc_a
    Float? pcb
    Int? mask_profile
    Float? e_profile
    Boolean? wg
    Int? filter_msa
    Float? max_seq_id
    Float? qid
    Float? qsc
    Float? cov
    Int? diff
    Int? num_iterations
    Boolean? exhaustive_search
    Boolean? lca_search
    Int? re_score_mode
    Boolean? allow_deletion
    Int? min_length
    Int? max_length
    Int? max_gaps
    Int? contig_start_mode
    Int? contig_end_mode
    Int? orf_start_mode
    Int? forward_frames
    Int? reverse_frames
    Int? translation_table
    Int? translate
    Boolean? use_all_table_starts
    Int? id_offset
    Boolean? add_orf_stop
    Int? sequence_overlap
    Int? sequence_split_mode
    Int? headers_split_mode
    Int? search_type
    Float? start_sens
    Int? sens_steps
    Int? format_mode
    String? format_output
    Float? overlap
    Int? dbtype
    Boolean? shuffle
    Int? created_b_mode
    Boolean? greedy_best_hits
    File? sub_mat
    Int? max_seq_len
    Int? db_load_mode
    Int? threads
    Int? compressed
    Int? verbosity_level_errors
    Int? mpi_runner
    Boolean? force_reuse
    Boolean? remove_tmp_files
    Boolean? filter_hits
    Int? sort_results
    Int? create_lookup
    Int? chain_alignments
    Int? merge_query
    Int? strand
    Boolean? db_output
    Int? write_lookup
  }
  command <<<
    mmseqs easy_rbh \
      ~{if defined(comp_bias_corr) then ("--comp-bias-corr " +  '"' + comp_bias_corr + '"') else ""} \
      ~{if defined(add_self_matches) then ("--add-self-matches " +  '"' + add_self_matches + '"') else ""} \
      ~{if defined(seed_sub_mat) then ("--seed-sub-mat " +  '"' + seed_sub_mat + '"') else ""} \
      ~{if defined(sensitivity_faster_fast) then ("-s " +  '"' + sensitivity_faster_fast + '"') else ""} \
      ~{if defined(kmer_length_set) then ("-k " +  '"' + kmer_length_set + '"') else ""} \
      ~{if defined(k_score) then ("--k-score " +  '"' + k_score + '"') else ""} \
      ~{if defined(alph_size) then ("--alph-size " +  '"' + alph_size + '"') else ""} \
      ~{if defined(max_seqs) then ("--max-seqs " +  '"' + max_seqs + '"') else ""} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""} \
      ~{if defined(split_mode) then ("--split-mode " +  '"' + split_mode + '"') else ""} \
      ~{if defined(split_memory_limit) then ("--split-memory-limit " +  '"' + split_memory_limit + '"') else ""} \
      ~{if defined(diag_score) then ("--diag-score " +  '"' + diag_score + '"') else ""} \
      ~{if defined(exact_km_er_matching) then ("--exact-kmer-matching " +  '"' + exact_km_er_matching + '"') else ""} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if defined(mask_lower_case) then ("--mask-lower-case " +  '"' + mask_lower_case + '"') else ""} \
      ~{if defined(min_un_gapped_score) then ("--min-ungapped-score " +  '"' + min_un_gapped_score + '"') else ""} \
      ~{if defined(spaced_km_er_mode) then ("--spaced-kmer-mode " +  '"' + spaced_km_er_mode + '"') else ""} \
      ~{if defined(spaced_km_er_pattern) then ("--spaced-kmer-pattern " +  '"' + spaced_km_er_pattern + '"') else ""} \
      ~{if defined(local_tmp) then ("--local-tmp " +  '"' + local_tmp + '"') else ""} \
      ~{if defined(disk_space_limit) then ("--disk-space-limit " +  '"' + disk_space_limit + '"') else ""} \
      ~{if defined(add_string_convert) then ("-a " +  '"' + add_string_convert + '"') else ""} \
      ~{if defined(alignment_mode) then ("--alignment-mode " +  '"' + alignment_mode + '"') else ""} \
      ~{if defined(alignment_output_mode) then ("--alignment-output-mode " +  '"' + alignment_output_mode + '"') else ""} \
      ~{if defined(wrapped_scoring) then ("--wrapped-scoring " +  '"' + wrapped_scoring + '"') else ""} \
      ~{if defined(list_matches_evalue) then ("-e " +  '"' + list_matches_evalue + '"') else ""} \
      ~{if defined(min_seq_id) then ("--min-seq-id " +  '"' + min_seq_id + '"') else ""} \
      ~{if defined(min_aln_len) then ("--min-aln-len " +  '"' + min_aln_len + '"') else ""} \
      ~{if defined(seq_id_mode) then ("--seq-id-mode " +  '"' + seq_id_mode + '"') else ""} \
      ~{if defined(alt_ali) then ("--alt-ali " +  '"' + alt_ali + '"') else ""} \
      ~{if defined(list_matches_fraction) then ("-c " +  '"' + list_matches_fraction + '"') else ""} \
      ~{if defined(cov_mode) then ("--cov-mode " +  '"' + cov_mode + '"') else ""} \
      ~{if defined(max_rejected) then ("--max-rejected " +  '"' + max_rejected + '"') else ""} \
      ~{if defined(max_accept) then ("--max-accept " +  '"' + max_accept + '"') else ""} \
      ~{if defined(score_bias) then ("--score-bias " +  '"' + score_bias + '"') else ""} \
      ~{if defined(realign) then ("--realign " +  '"' + realign + '"') else ""} \
      ~{if defined(realign_score_bias) then ("--realign-score-bias " +  '"' + realign_score_bias + '"') else ""} \
      ~{if defined(realign_max_seqs) then ("--realign-max-seqs " +  '"' + realign_max_seqs + '"') else ""} \
      ~{if defined(gap_open) then ("--gap-open " +  '"' + gap_open + '"') else ""} \
      ~{if defined(gap_extend) then ("--gap-extend " +  '"' + gap_extend + '"') else ""} \
      ~{if defined(z_drop) then ("--zdrop " +  '"' + z_drop + '"') else ""} \
      ~{if defined(exhaustive_search_filter) then ("--exhaustive-search-filter " +  '"' + exhaustive_search_filter + '"') else ""} \
      ~{if defined(pc_a) then ("--pca " +  '"' + pc_a + '"') else ""} \
      ~{if defined(pcb) then ("--pcb " +  '"' + pcb + '"') else ""} \
      ~{if defined(mask_profile) then ("--mask-profile " +  '"' + mask_profile + '"') else ""} \
      ~{if defined(e_profile) then ("--e-profile " +  '"' + e_profile + '"') else ""} \
      ~{if defined(wg) then ("--wg " +  '"' + wg + '"') else ""} \
      ~{if defined(filter_msa) then ("--filter-msa " +  '"' + filter_msa + '"') else ""} \
      ~{if defined(max_seq_id) then ("--max-seq-id " +  '"' + max_seq_id + '"') else ""} \
      ~{if defined(qid) then ("--qid " +  '"' + qid + '"') else ""} \
      ~{if defined(qsc) then ("--qsc " +  '"' + qsc + '"') else ""} \
      ~{if defined(cov) then ("--cov " +  '"' + cov + '"') else ""} \
      ~{if defined(diff) then ("--diff " +  '"' + diff + '"') else ""} \
      ~{if defined(num_iterations) then ("--num-iterations " +  '"' + num_iterations + '"') else ""} \
      ~{if defined(exhaustive_search) then ("--exhaustive-search " +  '"' + exhaustive_search + '"') else ""} \
      ~{if defined(lca_search) then ("--lca-search " +  '"' + lca_search + '"') else ""} \
      ~{if defined(re_score_mode) then ("--rescore-mode " +  '"' + re_score_mode + '"') else ""} \
      ~{if defined(allow_deletion) then ("--allow-deletion " +  '"' + allow_deletion + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(max_length) then ("--max-length " +  '"' + max_length + '"') else ""} \
      ~{if defined(max_gaps) then ("--max-gaps " +  '"' + max_gaps + '"') else ""} \
      ~{if defined(contig_start_mode) then ("--contig-start-mode " +  '"' + contig_start_mode + '"') else ""} \
      ~{if defined(contig_end_mode) then ("--contig-end-mode " +  '"' + contig_end_mode + '"') else ""} \
      ~{if defined(orf_start_mode) then ("--orf-start-mode " +  '"' + orf_start_mode + '"') else ""} \
      ~{if defined(forward_frames) then ("--forward-frames " +  '"' + forward_frames + '"') else ""} \
      ~{if defined(reverse_frames) then ("--reverse-frames " +  '"' + reverse_frames + '"') else ""} \
      ~{if defined(translation_table) then ("--translation-table " +  '"' + translation_table + '"') else ""} \
      ~{if defined(translate) then ("--translate " +  '"' + translate + '"') else ""} \
      ~{if defined(use_all_table_starts) then ("--use-all-table-starts " +  '"' + use_all_table_starts + '"') else ""} \
      ~{if defined(id_offset) then ("--id-offset " +  '"' + id_offset + '"') else ""} \
      ~{if defined(add_orf_stop) then ("--add-orf-stop " +  '"' + add_orf_stop + '"') else ""} \
      ~{if defined(sequence_overlap) then ("--sequence-overlap " +  '"' + sequence_overlap + '"') else ""} \
      ~{if defined(sequence_split_mode) then ("--sequence-split-mode " +  '"' + sequence_split_mode + '"') else ""} \
      ~{if defined(headers_split_mode) then ("--headers-split-mode " +  '"' + headers_split_mode + '"') else ""} \
      ~{if defined(search_type) then ("--search-type " +  '"' + search_type + '"') else ""} \
      ~{if defined(start_sens) then ("--start-sens " +  '"' + start_sens + '"') else ""} \
      ~{if defined(sens_steps) then ("--sens-steps " +  '"' + sens_steps + '"') else ""} \
      ~{if defined(format_mode) then ("--format-mode " +  '"' + format_mode + '"') else ""} \
      ~{if defined(format_output) then ("--format-output " +  '"' + format_output + '"') else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""} \
      ~{if defined(dbtype) then ("--dbtype " +  '"' + dbtype + '"') else ""} \
      ~{if defined(shuffle) then ("--shuffle " +  '"' + shuffle + '"') else ""} \
      ~{if defined(created_b_mode) then ("--createdb-mode " +  '"' + created_b_mode + '"') else ""} \
      ~{if defined(greedy_best_hits) then ("--greedy-best-hits " +  '"' + greedy_best_hits + '"') else ""} \
      ~{if defined(sub_mat) then ("--sub-mat " +  '"' + sub_mat + '"') else ""} \
      ~{if defined(max_seq_len) then ("--max-seq-len " +  '"' + max_seq_len + '"') else ""} \
      ~{if defined(db_load_mode) then ("--db-load-mode " +  '"' + db_load_mode + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""} \
      ~{if defined(mpi_runner) then ("--mpi-runner " +  '"' + mpi_runner + '"') else ""} \
      ~{if defined(force_reuse) then ("--force-reuse " +  '"' + force_reuse + '"') else ""} \
      ~{if defined(remove_tmp_files) then ("--remove-tmp-files " +  '"' + remove_tmp_files + '"') else ""} \
      ~{if defined(filter_hits) then ("--filter-hits " +  '"' + filter_hits + '"') else ""} \
      ~{if defined(sort_results) then ("--sort-results " +  '"' + sort_results + '"') else ""} \
      ~{if defined(create_lookup) then ("--create-lookup " +  '"' + create_lookup + '"') else ""} \
      ~{if defined(chain_alignments) then ("--chain-alignments " +  '"' + chain_alignments + '"') else ""} \
      ~{if defined(merge_query) then ("--merge-query " +  '"' + merge_query + '"') else ""} \
      ~{if defined(strand) then ("--strand " +  '"' + strand + '"') else ""} \
      ~{if defined(db_output) then ("--db-output " +  '"' + db_output + '"') else ""} \
      ~{if defined(write_lookup) then ("--write-lookup " +  '"' + write_lookup + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    comp_bias_corr: "Correct for locally biased amino acid composition (range 0-1) [1]"
    add_self_matches: "Artificially add entries of queries with themselves (for clustering) [0]"
    seed_sub_mat: "Substitution matrix file for k-mer generation [nucl:nucleotide.out,aa:VTML80.out]"
    sensitivity_faster_fast: "Sensitivity: 1.0 faster; 4.0 fast; 7.5 sensitive [5.700]"
    kmer_length_set: "k-mer length (0: automatically set to optimum) [0]"
    k_score: "k-mer threshold for generating similar k-mer lists [2147483647]"
    alph_size: "Alphabet size (range 2-21) [nucl:5,aa:21]"
    max_seqs: "Maximum results per query sequence allowed to pass the prefilter (affects sensitivity) [300]"
    split: "Split input into N equally distributed chunks. 0: set the best split automatically [0]"
    split_mode: "0: split target db; 1: split query db; 2: auto, depending on main memory [2]"
    split_memory_limit: "Set max memory per split. E.g. 800B, 5K, 10M, 1G. Default (0) to all available system memory [0]"
    diag_score: "Use ungapped diagonal scoring during prefilter [1]"
    exact_km_er_matching: "Extract only exact k-mers for matching (range 0-1) [0]"
    mask: "Mask sequences in k-mer stage: 0: w/o low complexity masking, 1: with low complexity masking [1]"
    mask_lower_case: "Lowercase letters will be excluded from k-mer search 0: include region, 1: exclude region [0]"
    min_un_gapped_score: "Accept only matches with ungapped alignment score above threshold [15]"
    spaced_km_er_mode: "0: use consecutive positions in k-mers; 1: use spaced k-mers [1]"
    spaced_km_er_pattern: "User-specified spaced k-mer pattern []"
    local_tmp: "Path where some of the temporary files will be created []"
    disk_space_limit: "Set max disk space to use for reverse profile searches. E.g. 800B, 5K, 10M, 1G. Default (0) to all available disk space in the temp folder [0]"
    add_string_convert: "Add backtrace string (convert to alignments with mmseqs convertalis module) [0]"
    alignment_mode: "How to compute the alignment:\\n0: automatic\\n1: only score and end_pos\\n2: also start_pos and cov\\n3: also seq.id\\n4: only ungapped alignment [3]"
    alignment_output_mode: "How to compute the alignment:\\n0: automatic\\n1: only score and end_pos\\n2: also start_pos and cov\\n3: also seq.id\\n4: only ungapped alignment\\n5: score only (output) cluster format [0]"
    wrapped_scoring: "Double the (nucleotide) query sequence during the scoring process to allow wrapped diagonal scoring around end and start [0]"
    list_matches_evalue: "List matches below this E-value (range 0.0-inf) [1.000E-03]"
    min_seq_id: "List matches above this sequence identity (for clustering) (range 0.0-1.0) [0.000]"
    min_aln_len: "Minimum alignment length (range 0-INT_MAX) [0]"
    seq_id_mode: "0: alignment length 1: shorter, 2: longer sequence [0]"
    alt_ali: "Show up to this many alternative alignments [0]"
    list_matches_fraction: "List matches above this fraction of aligned (covered) residues (see --cov-mode) [0.000]"
    cov_mode: "0: coverage of query and target\\n1: coverage of target\\n2: coverage of query\\n3: target seq. length has to be at least x% of query length\\n4: query seq. length has to be at least x% of target length\\n5: short seq. needs to be at least x% of the other seq. length [0]"
    max_rejected: "Maximum rejected alignments before alignment calculation for a query is stopped [2147483647]"
    max_accept: "Maximum accepted alignments before alignment calculation for a query is stopped [2147483647]"
    score_bias: "Score bias when computing SW alignment (in bits) [0.000]"
    realign: "Compute more conservative, shorter alignments (scores and E-values not changed) [0]"
    realign_score_bias: "Additional bias when computing realignment [-0.200]"
    realign_max_seqs: "Maximum number of results to return in realignment [2147483647]"
    gap_open: "Gap open cost [nucl:5,aa:11]"
    gap_extend: "Gap extension cost [nucl:2,aa:1]"
    z_drop: "Maximal allowed difference between score values before alignment is truncated  (nucleotide alignment only) [40]"
    exhaustive_search_filter: "Filter result during search: 0: do not filter, 1: filter [0]"
    pc_a: "Pseudo count admixture strength [1.000]"
    pcb: "Pseudo counts: Neff at half of maximum admixture (range 0.0-inf) [1.500]"
    mask_profile: "Mask query sequence of profile using tantan [0,1] [1]"
    e_profile: "Include sequences matches with < E-value thr. into the profile (>=0.0) [1.000E-03]"
    wg: "Use global sequence weighting for profile calculation [0]"
    filter_msa: "Filter msa: 0: do not filter, 1: filter [1]"
    max_seq_id: "Reduce redundancy of output MSA using max. pairwise sequence identity [0.0,1.0] [0.900]"
    qid: "Reduce diversity of output MSAs using min.seq. identity with query sequences [0.0,1.0] [0.000]"
    qsc: "Reduce diversity of output MSAs using min. score per aligned residue with query sequences [-50.0,100.0] [-20.000]"
    cov: "Filter output MSAs using min. fraction of query residues covered by matched sequences [0.0,1.0] [0.000]"
    diff: "Filter MSAs by selecting most diverse set of sequences, keeping at least this many seqs in each MSA block of length 50 [1000]"
    num_iterations: "Number of iterative profile search iterations [1]"
    exhaustive_search: "For bigger profile DB, run iteratively the search by greedily swapping the search results [0]"
    lca_search: "Efficient search for LCA candidates [0]"
    re_score_mode: "Rescore diagonals with:\\n0: Hamming distance\\n1: local alignment (score only)\\n2: local alignment\\n3: global alignment\\n4: longest alignment fulfilling window quality criterion [0]"
    allow_deletion: "Allow deletions in a MSA [0]"
    min_length: "Minimum codon number in open reading frames [30]"
    max_length: "Maximum codon number in open reading frames [32734]"
    max_gaps: "Maximum number of codons with gaps or unknown residues before an open reading frame is rejected [2147483647]"
    contig_start_mode: "Contig start can be 0: incomplete, 1: complete, 2: both [2]"
    contig_end_mode: "Contig end can be 0: incomplete, 1: complete, 2: both [2]"
    orf_start_mode: "Orf fragment can be 0: from start to stop, 1: from any to stop, 2: from last encountered start to stop (no start in the middle) [1]"
    forward_frames: "Comma-separated list of frames on the forward strand to be extracted [1,2,3]"
    reverse_frames: "Comma-separated list of frames on the reverse strand to be extracted [1,2,3]"
    translation_table: "1) CANONICAL, 2) VERT_MITOCHONDRIAL, 3) YEAST_MITOCHONDRIAL, 4) MOLD_MITOCHONDRIAL, 5) INVERT_MITOCHONDRIAL, 6) CILIATE\\n9) FLATWORM_MITOCHONDRIAL, 10) EUPLOTID, 11) PROKARYOTE, 12) ALT_YEAST, 13) ASCIDIAN_MITOCHONDRIAL, 14) ALT_FLATWORM_MITOCHONDRIAL\\n15) BLEPHARISMA, 16) CHLOROPHYCEAN_MITOCHONDRIAL, 21) TREMATODE_MITOCHONDRIAL, 22) SCENEDESMUS_MITOCHONDRIAL\\n23) THRAUSTOCHYTRIUM_MITOCHONDRIAL, 24) PTEROBRANCHIA_MITOCHONDRIAL, 25) GRACILIBACTERIA, 26) PACHYSOLEN, 27) KARYORELICT, 28) CONDYLOSTOMA\\n29) MESODINIUM, 30) PERTRICH, 31) BLASTOCRITHIDIA [1]"
    translate: "Translate ORF to amino acid [0]"
    use_all_table_starts: "Use all alternatives for a start codon in the genetic table, if false - only ATG (AUG) [0]"
    id_offset: "Numeric ids in index file are offset by this value [0]"
    add_orf_stop: "Add stop codon '*' at complete start and end [0]"
    sequence_overlap: "Overlap between sequences [0]"
    sequence_split_mode: "Sequence split mode 0: copy data, 1: soft link data and write new index, [1]"
    headers_split_mode: "Header split mode: 0: split position, 1: original header [0]"
    search_type: "Search type 0: auto 1: amino acid, 2: translated, 3: nucleotide, 4: translated nucleotide alignment [0]"
    start_sens: "Start sensitivity [4.000]"
    sens_steps: "Number of search steps performed from --start-sens to -s [1]"
    format_mode: "Output format: 0: BLAST-TAB, 1: SAM, 2: BLAST-TAB + query/db length, 3: Pretty HTML [0]"
    format_output: "Choose comma separated list of output columns from: query,target,evalue,gapopen,pident,fident,nident,qstart,qend,qlen\\ntstart,tend,tlen,alnlen,raw,bits,cigar,qseq,tseq,qheader,theader,qaln,taln,qframe,tframe,mismatch,qcov,tcov\\nqset,qsetid,tset,tsetid,taxid,taxname,taxlineage,qorfstart,qorfend,torfstart,torfend [query,target,fident,alnlen,mismatch,gapopen,qstart,qend,tstart,tend,evalue,bits]"
    overlap: "Maximum overlap of covered regions [0.000]"
    dbtype: "Database type 0: auto, 1: amino acid 2: nucleotides [0]"
    shuffle: "Shuffle input database [1]"
    created_b_mode: "Createdb mode 0: copy data, 1: soft link data and write new index (works only with single line fasta/q) [1]"
    greedy_best_hits: "Choose the best hits greedily to cover the query [0]"
    sub_mat: "Substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]"
    max_seq_len: "Maximum sequence length [65535]"
    db_load_mode: "Database preload mode 0: auto, 1: fread, 2: mmap, 3: mmap+touch [0]"
    threads: "Number of CPU-cores used (all by default) [2]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
    mpi_runner: "Use MPI on compute cluster with this MPI command (e.g. \\\"mpirun -np 42\\\") []"
    force_reuse: "Reuse tmp filse in tmp/latest folder ignoring parameters and version changes [0]"
    remove_tmp_files: "Delete temporary files [1]"
    filter_hits: "Filter hits by seq.id. and coverage [0]"
    sort_results: "Sort results: 0: no sorting, 1: sort by E-value (Alignment) or seq.id. (Hamming) [0]"
    create_lookup: "Create database lookup file (can be very large) [0]"
    chain_alignments: "Chain overlapping alignments [0]"
    merge_query: "Combine ORFs/split sequences to a single entry [1]"
    strand: "Strand selection only works for DNA/DNA search 0: reverse, 1: forward, 2: both [1]"
    db_output: "Return a result DB instead of a text file [0]"
    write_lookup: "write .lookup file containing mapping from internal id, fasta id and file number [0]"
  }
  output {
    File out_stdout = stdout()
    File out_seed_sub_mat = "${in_seed_sub_mat}"
    File out_sub_mat = "${in_sub_mat}"
  }
}