class: CommandLineTool
id: mmseqs_clusterupdate.cwl
inputs:
- id: in_comp_bias_corr
  doc: Correct for locally biased amino acid composition (range 0-1) [1]
  type: long?
  inputBinding:
    prefix: --comp-bias-corr
- id: in_add_self_matches
  doc: Artificially add entries of queries with themselves (for clustering) [0]
  type: boolean?
  inputBinding:
    prefix: --add-self-matches
- id: in_seed_sub_mat
  doc: Substitution matrix file for k-mer generation [nucl:nucleotide.out,aa:VTML80.out]
  type: File?
  inputBinding:
    prefix: --seed-sub-mat
- id: in_sensitivity_faster_fast
  doc: 'Sensitivity: 1.0 faster; 4.0 fast; 7.5 sensitive [4.000]'
  type: double?
  inputBinding:
    prefix: -s
- id: in_kmer_length_set
  doc: 'k-mer length (0: automatically set to optimum) [0]'
  type: long?
  inputBinding:
    prefix: -k
- id: in_k_score
  doc: k-mer threshold for generating similar k-mer lists [2147483647]
  type: long?
  inputBinding:
    prefix: --k-score
- id: in_alph_size
  doc: Alphabet size (range 2-21) [nucl:5,aa:21]
  type: long?
  inputBinding:
    prefix: --alph-size
- id: in_split
  doc: 'Split input into N equally distributed chunks. 0: set the best split automatically
    [0]'
  type: long?
  inputBinding:
    prefix: --split
- id: in_split_mode
  doc: '0: split target db; 1: split query db; 2: auto, depending on main memory [2]'
  type: long?
  inputBinding:
    prefix: --split-mode
- id: in_split_memory_limit
  doc: Set max memory per split. E.g. 800B, 5K, 10M, 1G. Default (0) to all available
    system memory [0]
  type: long?
  inputBinding:
    prefix: --split-memory-limit
- id: in_diag_score
  doc: Use ungapped diagonal scoring during prefilter [1]
  type: boolean?
  inputBinding:
    prefix: --diag-score
- id: in_exact_km_er_matching
  doc: Extract only exact k-mers for matching (range 0-1) [0]
  type: long?
  inputBinding:
    prefix: --exact-kmer-matching
- id: in_mask
  doc: 'Mask sequences in k-mer stage: 0: w/o low complexity masking, 1: with low
    complexity masking [1]'
  type: long?
  inputBinding:
    prefix: --mask
- id: in_mask_lower_case
  doc: 'Lowercase letters will be excluded from k-mer search 0: include region, 1:
    exclude region [0]'
  type: long?
  inputBinding:
    prefix: --mask-lower-case
- id: in_min_un_gapped_score
  doc: Accept only matches with ungapped alignment score above threshold [15]
  type: long?
  inputBinding:
    prefix: --min-ungapped-score
- id: in_spaced_km_er_mode
  doc: '0: use consecutive positions in k-mers; 1: use spaced k-mers [1]'
  type: long?
  inputBinding:
    prefix: --spaced-kmer-mode
- id: in_spaced_km_er_pattern
  doc: User-specified spaced k-mer pattern []
  type: string?
  inputBinding:
    prefix: --spaced-kmer-pattern
- id: in_local_tmp
  doc: Path where some of the temporary files will be created []
  type: File?
  inputBinding:
    prefix: --local-tmp
- id: in_disk_space_limit
  doc: Set max disk space to use for reverse profile searches. E.g. 800B, 5K, 10M,
    1G. Default (0) to all available disk space in the temp folder [0]
  type: long?
  inputBinding:
    prefix: --disk-space-limit
- id: in_add_string_convert
  doc: Add backtrace string (convert to alignments with mmseqs convertalis module)
    [0]
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_alignment_mode
  doc: "How to compute the alignment:\n0: automatic\n1: only score and end_pos\n2:\
    \ also start_pos and cov\n3: also seq.id\n4: only ungapped alignment [3]"
  type: long?
  inputBinding:
    prefix: --alignment-mode
- id: in_alignment_output_mode
  doc: "How to compute the alignment:\n0: automatic\n1: only score and end_pos\n2:\
    \ also start_pos and cov\n3: also seq.id\n4: only ungapped alignment\n5: score\
    \ only (output) cluster format [0]"
  type: long?
  inputBinding:
    prefix: --alignment-output-mode
- id: in_wrapped_scoring
  doc: Double the (nucleotide) query sequence during the scoring process to allow
    wrapped diagonal scoring around end and start [0]
  type: boolean?
  inputBinding:
    prefix: --wrapped-scoring
- id: in_list_matches_evalue
  doc: List matches below this E-value (range 0.0-inf) [1.000E-03]
  type: double?
  inputBinding:
    prefix: -e
- id: in_min_seq_id
  doc: List matches above this sequence identity (for clustering) (range 0.0-1.0)
    [0.000]
  type: double?
  inputBinding:
    prefix: --min-seq-id
- id: in_min_aln_len
  doc: Minimum alignment length (range 0-INT_MAX) [0]
  type: long?
  inputBinding:
    prefix: --min-aln-len
- id: in_seq_id_mode
  doc: '0: alignment length 1: shorter, 2: longer sequence [0]'
  type: long?
  inputBinding:
    prefix: --seq-id-mode
- id: in_alt_ali
  doc: Show up to this many alternative alignments [0]
  type: long?
  inputBinding:
    prefix: --alt-ali
- id: in_list_matches_fraction
  doc: List matches above this fraction of aligned (covered) residues (see --cov-mode)
    [0.000]
  type: double?
  inputBinding:
    prefix: -c
- id: in_cov_mode
  doc: "0: coverage of query and target\n1: coverage of target\n2: coverage of query\n\
    3: target seq. length has to be at least x% of query length\n4: query seq. length\
    \ has to be at least x% of target length\n5: short seq. needs to be at least x%\
    \ of the other seq. length [0]"
  type: long?
  inputBinding:
    prefix: --cov-mode
- id: in_max_rejected
  doc: Maximum rejected alignments before alignment calculation for a query is stopped
    [2147483647]
  type: long?
  inputBinding:
    prefix: --max-rejected
- id: in_max_accept
  doc: Maximum accepted alignments before alignment calculation for a query is stopped
    [2147483647]
  type: long?
  inputBinding:
    prefix: --max-accept
- id: in_score_bias
  doc: Score bias when computing SW alignment (in bits) [0.000]
  type: double?
  inputBinding:
    prefix: --score-bias
- id: in_realign
  doc: Compute more conservative, shorter alignments (scores and E-values not changed)
    [0]
  type: boolean?
  inputBinding:
    prefix: --realign
- id: in_realign_score_bias
  doc: Additional bias when computing realignment [-0.200]
  type: double?
  inputBinding:
    prefix: --realign-score-bias
- id: in_realign_max_seqs
  doc: Maximum number of results to return in realignment [2147483647]
  type: long?
  inputBinding:
    prefix: --realign-max-seqs
- id: in_gap_open
  doc: Gap open cost [nucl:5,aa:11]
  type: long?
  inputBinding:
    prefix: --gap-open
- id: in_gap_extend
  doc: Gap extension cost [nucl:2,aa:1]
  type: long?
  inputBinding:
    prefix: --gap-extend
- id: in_z_drop
  doc: Maximal allowed difference between score values before alignment is truncated  (nucleotide
    alignment only) [40]
  type: long?
  inputBinding:
    prefix: --zdrop
- id: in_exhaustive_search_filter
  doc: 'Filter result during search: 0: do not filter, 1: filter [0]'
  type: long?
  inputBinding:
    prefix: --exhaustive-search-filter
- id: in_cluster_mode
  doc: "0: Set-Cover (greedy)\n1: Connected component (BLASTclust)\n2,3: Greedy clustering\
    \ by sequence length (CDHIT) [0]"
  type: long?
  inputBinding:
    prefix: --cluster-mode
- id: in_max_iterations
  doc: Maximum depth of breadth first search in connected component clustering [1000]
  type: long?
  inputBinding:
    prefix: --max-iterations
- id: in_similarity_type
  doc: 'Type of score used for clustering. 1: alignment score 2: sequence identity
    [2]'
  type: long?
  inputBinding:
    prefix: --similarity-type
- id: in_single_step_clustering
  doc: Switch from cascaded to simple clustering workflow [0]
  type: boolean?
  inputBinding:
    prefix: --single-step-clustering
- id: in_cluster_steps
  doc: Cascaded clustering steps from 1 to -s [3]
  type: long?
  inputBinding:
    prefix: --cluster-steps
- id: in_cluster_reassign
  doc: "Cascaded clustering can cluster sequence that do not fulfill the clustering\
    \ criteria.\nCluster reassignment corrects these errors [0]"
  type: boolean?
  inputBinding:
    prefix: --cluster-reassign
- id: in_km_er_per_seq
  doc: k-mers per sequence [21]
  type: long?
  inputBinding:
    prefix: --kmer-per-seq
- id: in_km_er_per_seq_scale
  doc: Scale k-mer per sequence based on sequence length as kmer-per-seq val + scale
    x seqlen [nucl:0.200,aa:0.000]
  type: long?
  inputBinding:
    prefix: --kmer-per-seq-scale
- id: in_adjust_km_er_len
  doc: Adjust k-mer length based on specificity (only for nucleotides) [0]
  type: boolean?
  inputBinding:
    prefix: --adjust-kmer-len
- id: in_hash_shift
  doc: Shift k-mer hash initialization [67]
  type: long?
  inputBinding:
    prefix: --hash-shift
- id: in_include_only_extendable
  doc: Include only extendable [0]
  type: boolean?
  inputBinding:
    prefix: --include-only-extendable
- id: in_ignore_multi_km_er
  doc: Skip k-mers occurring multiple times (>=2) [0]
  type: boolean?
  inputBinding:
    prefix: --ignore-multi-kmer
- id: in_pc_a
  doc: Pseudo count admixture strength [1.000]
  type: double?
  inputBinding:
    prefix: --pca
- id: in_pcb
  doc: 'Pseudo counts: Neff at half of maximum admixture (range 0.0-inf) [1.500]'
  type: double?
  inputBinding:
    prefix: --pcb
- id: in_mask_profile
  doc: Mask query sequence of profile using tantan [0,1] [1]
  type: long?
  inputBinding:
    prefix: --mask-profile
- id: in_e_profile
  doc: Include sequences matches with < E-value thr. into the profile (>=0.0) [1.000E-03]
  type: double?
  inputBinding:
    prefix: --e-profile
- id: in_wg
  doc: Use global sequence weighting for profile calculation [0]
  type: boolean?
  inputBinding:
    prefix: --wg
- id: in_filter_msa
  doc: 'Filter msa: 0: do not filter, 1: filter [1]'
  type: long?
  inputBinding:
    prefix: --filter-msa
- id: in_max_seq_id
  doc: Reduce redundancy of output MSA using max. pairwise sequence identity [0.0,1.0]
    [0.900]
  type: double?
  inputBinding:
    prefix: --max-seq-id
- id: in_qid
  doc: Reduce diversity of output MSAs using min.seq. identity with query sequences
    [0.0,1.0] [0.000]
  type: double?
  inputBinding:
    prefix: --qid
- id: in_qsc
  doc: Reduce diversity of output MSAs using min. score per aligned residue with query
    sequences [-50.0,100.0] [-20.000]
  type: double?
  inputBinding:
    prefix: --qsc
- id: in_cov
  doc: Filter output MSAs using min. fraction of query residues covered by matched
    sequences [0.0,1.0] [0.000]
  type: double?
  inputBinding:
    prefix: --cov
- id: in_diff
  doc: Filter MSAs by selecting most diverse set of sequences, keeping at least this
    many seqs in each MSA block of length 50 [1000]
  type: long?
  inputBinding:
    prefix: --diff
- id: in_num_iterations
  doc: Number of iterative profile search iterations [1]
  type: long?
  inputBinding:
    prefix: --num-iterations
- id: in_exhaustive_search
  doc: For bigger profile DB, run iteratively the search by greedily swapping the
    search results [0]
  type: boolean?
  inputBinding:
    prefix: --exhaustive-search
- id: in_lca_search
  doc: Efficient search for LCA candidates [0]
  type: boolean?
  inputBinding:
    prefix: --lca-search
- id: in_re_score_mode
  doc: "Rescore diagonals with:\n0: Hamming distance\n1: local alignment (score only)\n\
    2: local alignment\n3: global alignment\n4: longest alignment fulfilling window\
    \ quality criterion [0]"
  type: long?
  inputBinding:
    prefix: --rescore-mode
- id: in_allow_deletion
  doc: Allow deletions in a MSA [0]
  type: boolean?
  inputBinding:
    prefix: --allow-deletion
- id: in_min_length
  doc: Minimum codon number in open reading frames [30]
  type: long?
  inputBinding:
    prefix: --min-length
- id: in_max_length
  doc: Maximum codon number in open reading frames [32734]
  type: long?
  inputBinding:
    prefix: --max-length
- id: in_max_gaps
  doc: Maximum number of codons with gaps or unknown residues before an open reading
    frame is rejected [2147483647]
  type: long?
  inputBinding:
    prefix: --max-gaps
- id: in_contig_start_mode
  doc: 'Contig start can be 0: incomplete, 1: complete, 2: both [2]'
  type: long?
  inputBinding:
    prefix: --contig-start-mode
- id: in_contig_end_mode
  doc: 'Contig end can be 0: incomplete, 1: complete, 2: both [2]'
  type: long?
  inputBinding:
    prefix: --contig-end-mode
- id: in_orf_start_mode
  doc: 'Orf fragment can be 0: from start to stop, 1: from any to stop, 2: from last
    encountered start to stop (no start in the middle) [1]'
  type: long?
  inputBinding:
    prefix: --orf-start-mode
- id: in_forward_frames
  doc: Comma-separated list of frames on the forward strand to be extracted [1,2,3]
  type: long?
  inputBinding:
    prefix: --forward-frames
- id: in_reverse_frames
  doc: Comma-separated list of frames on the reverse strand to be extracted [1,2,3]
  type: long?
  inputBinding:
    prefix: --reverse-frames
- id: in_translation_table
  doc: "1) CANONICAL, 2) VERT_MITOCHONDRIAL, 3) YEAST_MITOCHONDRIAL, 4) MOLD_MITOCHONDRIAL,\
    \ 5) INVERT_MITOCHONDRIAL, 6) CILIATE\n9) FLATWORM_MITOCHONDRIAL, 10) EUPLOTID,\
    \ 11) PROKARYOTE, 12) ALT_YEAST, 13) ASCIDIAN_MITOCHONDRIAL, 14) ALT_FLATWORM_MITOCHONDRIAL\n\
    15) BLEPHARISMA, 16) CHLOROPHYCEAN_MITOCHONDRIAL, 21) TREMATODE_MITOCHONDRIAL,\
    \ 22) SCENEDESMUS_MITOCHONDRIAL\n23) THRAUSTOCHYTRIUM_MITOCHONDRIAL, 24) PTEROBRANCHIA_MITOCHONDRIAL,\
    \ 25) GRACILIBACTERIA, 26) PACHYSOLEN, 27) KARYORELICT, 28) CONDYLOSTOMA\n29)\
    \ MESODINIUM, 30) PERTRICH, 31) BLASTOCRITHIDIA [1]"
  type: long?
  inputBinding:
    prefix: --translation-table
- id: in_translate
  doc: Translate ORF to amino acid [0]
  type: long?
  inputBinding:
    prefix: --translate
- id: in_use_all_table_starts
  doc: Use all alternatives for a start codon in the genetic table, if false - only
    ATG (AUG) [0]
  type: boolean?
  inputBinding:
    prefix: --use-all-table-starts
- id: in_id_offset
  doc: Numeric ids in index file are offset by this value [0]
  type: long?
  inputBinding:
    prefix: --id-offset
- id: in_add_orf_stop
  doc: Add stop codon '*' at complete start and end [0]
  type: boolean?
  inputBinding:
    prefix: --add-orf-stop
- id: in_sequence_overlap
  doc: Overlap between sequences [0]
  type: long?
  inputBinding:
    prefix: --sequence-overlap
- id: in_sequence_split_mode
  doc: 'Sequence split mode 0: copy data, 1: soft link data and write new index, [1]'
  type: long?
  inputBinding:
    prefix: --sequence-split-mode
- id: in_headers_split_mode
  doc: 'Header split mode: 0: split position, 1: original header [0]'
  type: long?
  inputBinding:
    prefix: --headers-split-mode
- id: in_search_type
  doc: 'Search type 0: auto 1: amino acid, 2: translated, 3: nucleotide, 4: translated
    nucleotide alignment [0]'
  type: long?
  inputBinding:
    prefix: --search-type
- id: in_start_sens
  doc: Start sensitivity [4.000]
  type: double?
  inputBinding:
    prefix: --start-sens
- id: in_sens_steps
  doc: Number of search steps performed from --start-sens to -s [1]
  type: long?
  inputBinding:
    prefix: --sens-steps
- id: in_use_seq_id
  doc: Sequence ID (Uniprot, GenBank, ...) is used for identifying matches between
    the old and the new DB [0]
  type: boolean?
  inputBinding:
    prefix: --use-seq-id
- id: in_recover_deleted
  doc: Find and recover deleted sequences during updating of clustering [0]
  type: boolean?
  inputBinding:
    prefix: --recover-deleted
- id: in_sub_mat
  doc: Substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]
  type: File?
  inputBinding:
    prefix: --sub-mat
- id: in_max_seq_len
  doc: Maximum sequence length [65535]
  type: long?
  inputBinding:
    prefix: --max-seq-len
- id: in_db_load_mode
  doc: 'Database preload mode 0: auto, 1: fread, 2: mmap, 3: mmap+touch [0]'
  type: long?
  inputBinding:
    prefix: --db-load-mode
- id: in_threads
  doc: Number of CPU-cores used (all by default) [2]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_compressed
  doc: Write compressed output [0]
  type: long?
  inputBinding:
    prefix: --compressed
- id: in_verbosity_level_errors
  doc: 'Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]'
  type: long?
  inputBinding:
    prefix: -v
- id: in_mpi_runner
  doc: Use MPI on compute cluster with this MPI command (e.g. "mpirun -np 42") []
  type: long?
  inputBinding:
    prefix: --mpi-runner
- id: in_force_reuse
  doc: Reuse tmp filse in tmp/latest folder ignoring parameters and version changes
    [0]
  type: boolean?
  inputBinding:
    prefix: --force-reuse
- id: in_remove_tmp_files
  doc: Delete temporary files [0]
  type: boolean?
  inputBinding:
    prefix: --remove-tmp-files
- id: in_filter_hits
  doc: Filter hits by seq.id. and coverage [0]
  type: boolean?
  inputBinding:
    prefix: --filter-hits
- id: in_sort_results
  doc: 'Sort results: 0: no sorting, 1: sort by E-value (Alignment) or seq.id. (Hamming)
    [0]'
  type: long?
  inputBinding:
    prefix: --sort-results
- id: in_create_lookup
  doc: Create database lookup file (can be very large) [0]
  type: long?
  inputBinding:
    prefix: --create-lookup
- id: in_chain_alignments
  doc: Chain overlapping alignments [0]
  type: long?
  inputBinding:
    prefix: --chain-alignments
- id: in_merge_query
  doc: Combine ORFs/split sequences to a single entry [1]
  type: long?
  inputBinding:
    prefix: --merge-query
- id: in_strand
  doc: 'Strand selection only works for DNA/DNA search 0: reverse, 1: forward, 2:
    both [1]'
  type: long?
  inputBinding:
    prefix: --strand
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_seed_sub_mat
  doc: Substitution matrix file for k-mer generation [nucl:nucleotide.out,aa:VTML80.out]
  type: File?
  outputBinding:
    glob: $(inputs.in_seed_sub_mat)
- id: out_sub_mat
  doc: Substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]
  type: File?
  outputBinding:
    glob: $(inputs.in_sub_mat)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0
cwlVersion: v1.1
baseCommand:
- mmseqs
- clusterupdate
