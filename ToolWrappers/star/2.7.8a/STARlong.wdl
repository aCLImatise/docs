version 1.0

task STARlong {
  input {
    Array[String] read_files_sam_tags_keep
    Boolean? _map_all_reads
    String? out_sam_attr_rg_line
    Boolean? solo_cb_position
    String align_reads
    String genome_generate
    String lift_over
    String solo_cell_filtering
    String all_rwx
    String load_and_keep
    String load_and_remove
    String load_and_exit
    String remove
    String no_shared_memory
    String _sambam_alignments
    String splice_junctions_sjouttab
    String haploid
    String diploid
    String full
    String transcriptome
    String super_trans_rip_to_me
    String files_including_sa
    String _fasta_fastq
    String _keep_tags
    String log
    String alignments_normally_are
    String bam_unsorted
    String bam_quant
    String var_28
    String output_separate_fastafastq
    Float old_two_dot_four
    String random
    String bam
    String output_sam_sorting
    String unsorted
    String standard
    String nh_hi_as_nm_ch
    String nh
    String hi
    String local_alignment_score
    String number_mismatches_pe
    String edit_distance_inserted
    String md
    String jm
    String ji
    String xs
    String mc
    String ch
    String cn
    String va
    String vg
    String vw
    String sm
    String ss
    String sq
    String ha
    String rb
    String vr
    String var_58
    Int number
    String unique_identical
    String unique_identical_not_multi
    String _signal_output
    String bed_graph
    String wiggle
    Int read_one_five_p
    Int read_two
    String stranded
    String rpm
    String _normalization_counts
    String normal
    String var_71
    String remove_noncanonical
    String remove_noncanonical_unannotated
    String remove_inconsistent_strands
    String var_75
    String local
    String end_to_end
    Int extend_five_po_fread_one
    String no
    String _insertions_flushed
    String insertions_flushed_right
    String junctions
    String separates_a_mold
    String within_bam
    String gene_counts
    String in_del_soft_clip_single_end
    String single_end
    String _pass_mapping
    String basic
    String sam_tag
    String cb_umi_simple
    String cb_umi_complex
    String cb_sam_tagout
    String smart_seq
    String whitelist_cell_barcodes
    String position_umi_barcode
    String only_exact_matches
    Int one_mm
    Int one_mm_multi
    Int one_mm_multi_pseudo_counts
    Int one_mm_multi_n_base_pseudo_counts
    String un_stranded
    String forward
    String reverse
    String gene
    String splice_junctions_reported
    String gene_full
    Int transcript_three_p
    Int one_mm_all
    Int one_mm_directional_umi_tools
    Int one_mm_directional
    String only_exactly_matching
    String node_dup
    Int one_mm_cr
    String multigene_umi
    String file_name_prefix
    String output_filtered_cells
    String top_cells
    Float cell_ranger_two_dot_two
    String empty_drops_cr
  }
  command <<<
    STARlong \
      ~{align_reads} \
      ~{genome_generate} \
      ~{lift_over} \
      ~{solo_cell_filtering} \
      ~{all_rwx} \
      ~{load_and_keep} \
      ~{load_and_remove} \
      ~{load_and_exit} \
      ~{remove} \
      ~{no_shared_memory} \
      ~{_sambam_alignments} \
      ~{splice_junctions_sjouttab} \
      ~{haploid} \
      ~{diploid} \
      ~{full} \
      ~{transcriptome} \
      ~{super_trans_rip_to_me} \
      ~{files_including_sa} \
      ~{_fasta_fastq} \
      ~{_keep_tags} \
      ~{log} \
      ~{alignments_normally_are} \
      ~{bam_unsorted} \
      ~{bam_quant} \
      ~{var_28} \
      ~{output_separate_fastafastq} \
      ~{old_two_dot_four} \
      ~{random} \
      ~{bam} \
      ~{output_sam_sorting} \
      ~{unsorted} \
      ~{standard} \
      ~{nh_hi_as_nm_ch} \
      ~{nh} \
      ~{hi} \
      ~{local_alignment_score} \
      ~{number_mismatches_pe} \
      ~{edit_distance_inserted} \
      ~{md} \
      ~{jm} \
      ~{ji} \
      ~{xs} \
      ~{mc} \
      ~{ch} \
      ~{cn} \
      ~{va} \
      ~{vg} \
      ~{vw} \
      ~{sm} \
      ~{ss} \
      ~{sq} \
      ~{ha} \
      ~{rb} \
      ~{vr} \
      ~{var_58} \
      ~{number} \
      ~{unique_identical} \
      ~{unique_identical_not_multi} \
      ~{_signal_output} \
      ~{bed_graph} \
      ~{wiggle} \
      ~{read_one_five_p} \
      ~{read_two} \
      ~{stranded} \
      ~{rpm} \
      ~{_normalization_counts} \
      ~{normal} \
      ~{var_71} \
      ~{remove_noncanonical} \
      ~{remove_noncanonical_unannotated} \
      ~{remove_inconsistent_strands} \
      ~{var_75} \
      ~{local} \
      ~{end_to_end} \
      ~{extend_five_po_fread_one} \
      ~{no} \
      ~{_insertions_flushed} \
      ~{insertions_flushed_right} \
      ~{junctions} \
      ~{separates_a_mold} \
      ~{within_bam} \
      ~{gene_counts} \
      ~{in_del_soft_clip_single_end} \
      ~{single_end} \
      ~{_pass_mapping} \
      ~{basic} \
      ~{sam_tag} \
      ~{cb_umi_simple} \
      ~{cb_umi_complex} \
      ~{cb_sam_tagout} \
      ~{smart_seq} \
      ~{whitelist_cell_barcodes} \
      ~{position_umi_barcode} \
      ~{only_exact_matches} \
      ~{one_mm} \
      ~{one_mm_multi} \
      ~{one_mm_multi_pseudo_counts} \
      ~{one_mm_multi_n_base_pseudo_counts} \
      ~{un_stranded} \
      ~{forward} \
      ~{reverse} \
      ~{gene} \
      ~{splice_junctions_reported} \
      ~{gene_full} \
      ~{transcript_three_p} \
      ~{one_mm_all} \
      ~{one_mm_directional_umi_tools} \
      ~{one_mm_directional} \
      ~{only_exactly_matching} \
      ~{node_dup} \
      ~{one_mm_cr} \
      ~{multigene_umi} \
      ~{file_name_prefix} \
      ~{output_filtered_cells} \
      ~{top_cells} \
      ~{cell_ranger_two_dot_two} \
      ~{empty_drops_cr} \
      ~{if defined(read_files_sam_tags_keep) then ("--readFilesSAMtagsKeep " +  '"' + read_files_sam_tags_keep + '"') else ""} \
      ~{if (_map_all_reads) then "-1" else ""} \
      ~{if defined(out_sam_attr_rg_line) then ("--outSAMattrRGline " +  '"' + out_sam_attr_rg_line + '"') else ""} \
      ~{if (solo_cb_position) then "--soloCBposition" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/star:2.7.8a--0"
  }
  parameter_meta {
    read_files_sam_tags_keep: "all tags"
    _map_all_reads: ": map all reads"
    out_sam_attr_rg_line: ":xxx , ID:zzz \\\"DS:z z\\\" , ID:yyy DS:yyyy"
    solo_cb_position: "0_0_2_-1  3_1_3_8"
    align_reads: "... map reads"
    genome_generate: "... generate genome files"
    lift_over: "... lift-over of GTF files (--sjdbGTFfile) between genome assemblies using chain file(s) from --genomeChainFiles."
    solo_cell_filtering: "</path/to/raw/count/dir/>   </path/to/output/prefix>    ... STARsolo cell filtering (\\\"calling\\\") without remapping, followed by the path to raw count directory and output (filtered) prefix"
    all_rwx: "... all-read/write/execute (same as chmod 777)"
    load_and_keep: "... load genome into shared and keep it in memory after run"
    load_and_remove: "... load genome into shared but remove it after run"
    load_and_exit: "... load genome into shared memory and exit, keeping the genome in memory for future runs"
    remove: "... do not map anything, just remove loaded genome from memory"
    no_shared_memory: "... do not use shared memory, each job will have its own private copy of the genome"
    _sambam_alignments: "... SAM/BAM alignments"
    splice_junctions_sjouttab: "... splice junctions (SJ.out.tab)"
    haploid: "... replace reference alleles with alternative alleles from VCF file (e.g. consensus allele)"
    diploid: "... create two haplotypes for each chromosome listed in VCF file, for genotypes 1|2, assumes perfect phasing (e.g. personal genome)"
    full: "... full (normal) genome"
    transcriptome: "... genome consists of transcript sequences"
    super_trans_rip_to_me: "... genome consists of superTranscript sequences"
    files_including_sa: "... all files including big Genome, SA and SAindex - this will create a complete genome directory"
    _fasta_fastq: "... FASTA or FASTQ"
    _keep_tags: "... do not keep any tags"
    log: "... log messages"
    alignments_normally_are: "... alignments in SAM format (which normally are output to Aligned.out.sam file), normal standard output will go into Log.std.out"
    bam_unsorted: "... alignments in BAM format, unsorted. Requires --outSAMtype BAM Unsorted"
    bam_quant: "... alignments to transcriptome in BAM format, unsorted. Requires --quantMode TranscriptomeSAM"
    var_28: "... no output"
    output_separate_fastafastq: "... output in separate fasta/fastq files, Unmapped.out.mate1/2"
    old_two_dot_four: "... quasi-random order used before 2.5.0"
    random: "... random order of alignments for each multi-mapper. Read mates (pairs) are always adjacent, all alignment for each read stay together. This option will become default in the future releases."
    bam: "... output BAM without sorting"
    output_sam_sorting: "... output SAM without sorting"
    unsorted: "... standard unsorted"
    standard: "... NH HI AS nM"
    nh_hi_as_nm_ch: "... NH HI AS nM NM MD jM jI MC ch                                                                    "
    nh: "... number of loci the reads maps to: =1 for unique mappers, >1 for multimappers. Standard SAM tag."
    hi: "... multiple alignment index, starts with --outSAMattrIHstart (=1 by default). Standard SAM tag."
    local_alignment_score: "... local alignment score, +1/-1 for matches/mismateches, score* penalties for indels and gaps. For PE reads, total score for two mates. Stadnard SAM tag."
    number_mismatches_pe: "... number of mismatches. For PE reads, sum over two mates."
    edit_distance_inserted: "... edit distance to the reference (number of mismatched + inserted + deleted bases) for each mate. Standard SAM tag."
    md: "... string encoding mismatched and deleted reference bases (see standard SAM specifications). Standard SAM tag."
    jm: "... intron motifs for all junctions (i.e. N in CIGAR): 0: non-canonical; 1: GT/AG, 2: CT/AC, 3: GC/AG, 4: CT/GC, 5: AT/AC, 6: GT/AT. If splice junctions database is used, and a junction is annotated, 20 is added to its motif value."
    ji: "... start and end of introns for all junctions (1-based)."
    xs: "... alignment strand according to --outSAMstrandField."
    mc: "... mate's CIGAR string. Standard SAM tag."
    ch: "... marks all segment of all chimeric alingments for --chimOutType WithinBAM output."
    cn: "... number of bases clipped from the read ends: 5' and 3'"
    va: "... variant allele"
    vg: "... genomic coordinate of the variant overlapped by the read."
    vw: "... 1 - alignment passes WASP filtering; 2,3,4,5,6,7 - alignment does not pass WASP filtering. Requires --waspOutputMode SAMtag."
    sm: "... assessment of CB and UMI."
    ss: "... sequence of the entire barcode (CB,UMI,adapter)."
    sq: "... quality of the entire barcode."
    ha: "... haplotype (1/2) when mapping to the diploid genome. Requires genome generated with --genomeTransformType Diploid .                               "
    rb: "... alignment block read/genomic coordinates."
    vr: "... read coordinate of the variant."
    var_58: "... no output"
    number: "... read number (index) in the FASTx file"
    unique_identical: "... mark all multimappers, and duplicate unique mappers. The coordinates, FLAG, CIGAR must be identical"
    unique_identical_not_multi: "... mark duplicate unique mappers but not multimappers."
    _signal_output: "... no signal output"
    bed_graph: "... bedGraph format"
    wiggle: "... wiggle format"
    read_one_five_p: "... signal from only 5' of the 1st read, useful for CAGE/RAMPAGE etc"
    read_two: "... signal from only 2nd read"
    stranded: "...  separate strands, str1 and str2"
    rpm: "... reads per million of mapped reads"
    _normalization_counts: "... no normalization, \\\"raw\\\" counts"
    normal: "... standard filtering using only current alignment"
    var_71: "... no filtering"
    remove_noncanonical: "... filter out alignments that contain non-canonical junctions"
    remove_noncanonical_unannotated: "... filter out alignments that contain non-canonical unannotated junctions when using annotated splice junctions database. The annotated non-canonical junctions will be kept."
    remove_inconsistent_strands: "... remove alignments that have junctions with inconsistent strands"
    var_75: "... no filtering"
    local: "... standard local alignment with soft-clipping allowed"
    end_to_end: "... force end-to-end read alignment, do not soft-clip"
    extend_five_po_fread_one: "... fully extend only the 5p of the read1, all other ends: local alignment"
    no: "... prohibit, useful for compatibility with Cufflinks"
    _insertions_flushed: "... insertions are not flushed"
    insertions_flushed_right: "... insertions are flushed to the right"
    junctions: "... Chimeric.out.junction"
    separates_a_mold: "... output old SAM into separate Chimeric.out.sam file"
    within_bam: "... output into main aligned BAM files (Aligned.*.bam)"
    gene_counts: "... count reads per gene"
    in_del_soft_clip_single_end: "... prohibit indels, soft clipping and single-end alignments - compatible with RSEM"
    single_end: "... prohibit single-end alignments"
    _pass_mapping: "... 1-pass mapping"
    basic: "... basic 2-pass mapping, with all 1st pass junctions inserted into the genome indices on the fly"
    sam_tag: "... add WASP tags to the alignments that pass WASP filtering"
    cb_umi_simple: "... (a.k.a. Droplet) one UMI and one Cell Barcode of fixed length in read2, e.g. Drop-seq and 10X Chromium."
    cb_umi_complex: "... one UMI of fixed length, but multiple Cell Barcodes of varying length, as well as adapters sequences are allowed in read2 only, e.g. inDrop."
    cb_sam_tagout: "... output Cell Barcode as CR and/or CB SAm tag. No UMI counting. --readFilesIn cDNA_read1 [cDNA_read2 if paired-end] CellBarcode_read . Requires --outSAMtype BAM Unsorted [and/or SortedByCoordinate]"
    smart_seq: "... Smart-seq: each cell in a separate FASTQ (paired- or single-end), barcodes are corresponding read-groups, no UMI sequences, alignments deduplicated according to alignment start and end (after extending soft-clipped bases)"
    whitelist_cell_barcodes: "... no whitelist: all cell barcodes are allowed"
    position_umi_barcode: "position of the UMI on the barcode read, same as soloCBposition\\nExample: inDrop (Zilionis et al, Nat. Protocols, 2017):\\n--soloCBposition  3_9_3_14"
    only_exact_matches: "... only exact matches allowed"
    one_mm: "... only one match in whitelist with 1 mismatched base allowed. Allowed CBs have to have at least one read with exact match."
    one_mm_multi: "... multiple matches in whitelist with 1 mismatched base allowed, posterior probability calculation is used choose one of the matches.\\nAllowed CBs have to have at least one read with exact match. This option matches best with CellRanger 2.2.0"
    one_mm_multi_pseudo_counts: "... same as 1MM_Multi, but pseudocounts of 1 are added to all whitelist barcodes."
    one_mm_multi_n_base_pseudo_counts: "... same as 1MM_multi_pseudocounts, multimatching to WL is allowed for CBs with N-bases. This option matches best with CellRanger >= 3.0.0"
    un_stranded: "... no strand information"
    forward: "... read strand same as the original RNA molecule"
    reverse: "... read strand opposite to the original RNA molecule"
    gene: "... genes: reads match the gene transcript"
    splice_junctions_reported: "... splice junctions: reported in SJ.out.tab"
    gene_full: "... full genes: count all reads overlapping genes' exons and introns"
    transcript_three_p: "... quantification of transcript for 3' protocols"
    one_mm_all: "... all UMIs with 1 mismatch distance to each other are collapsed (i.e. counted once)."
    one_mm_directional_umi_tools: "... follows the \\\"directional\\\" method from the UMI-tools by Smith, Heger and Sudbery (Genome Research 2017)."
    one_mm_directional: "... same as 1MM_Directional_UMItools, but with more stringent criteria for duplicate UMIs"
    only_exactly_matching: "... only exactly matching UMIs are collapsed."
    node_dup: "... no deduplication of UMIs, count all reads."
    one_mm_cr: "... CellRanger2-4 algorithm for 1MM UMI collapsing."
    multigene_umi: "... basic + remove lower-count UMIs that map to more than one gene."
    file_name_prefix: "gene_names   barcode_sequences   cell_feature_count_matrix"
    output_filtered_cells: "... do not output filtered cells"
    top_cells: "... only report top cells by UMI count, followed by the exact number of cells"
    cell_ranger_two_dot_two: "... simple filtering of CellRanger 2.2. \\nCan be followed by numbers: number of expected cells, robust maximum percentile for UMI count, maximum to minimum ratio for UMI count\\nThe harcoded values are from CellRanger: nExpectedCells=3000;  maxPercentile=0.99;  maxMinRatio=10"
    empty_drops_cr: "... EmptyDrops filtering in CellRanger flavor. Please cite the original EmptyDrops paper: A.T.L Lun et al, Genome Biology, 20, 63 (2019): https://genomebiology.biomedcentral.com/articles/10.1186/s13059-019-1662-y\\nCan be followed by 10 numeric parameters:  nExpectedCells   maxPercentile   maxMinRatio   indMin   indMax   umiMin   umiMinFracMedian   candMaxN   FDR   simN\\nThe harcoded values are from CellRanger:             3000            0.99            10    45000    90000      500               0.01      20000  0.01  10000"
  }
  output {
    File out_stdout = stdout()
  }
}