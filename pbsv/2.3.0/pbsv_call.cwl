class: CommandLineTool
id: ../../../pbsv_call.cwl
inputs:
- id: chunk_length
  doc: STR   Process in chunks of N reference bp. [1M]
  type: boolean
  inputBinding:
    prefix: --chunk-length
- id: region
  doc: 'STR   Limit discovery to this reference region: CHR|CHR:START-END.'
  type: boolean
  inputBinding:
    prefix: --region
- id: types
  doc: 'STR   Call these SV types: "DEL", "INS", "INV", "DUP", "BND", "CNV". [DEL,INS,INV,DUP,BND,CNV]'
  type: boolean
  inputBinding:
    prefix: --types
- id: min_sv_length
  doc: STR   Ignore variants with length < N bp. [20]
  type: boolean
  inputBinding:
    prefix: --min-sv-length
- id: min_cnv_length
  doc: STR   Ignore CNVs with length < N bp. [1K]
  type: boolean
  inputBinding:
    prefix: --min-cnv-length
- id: max_ins_length
  doc: STR   Ignore insertions with length > N bp. [10K]
  type: boolean
  inputBinding:
    prefix: --max-ins-length
- id: max_dup_length
  doc: STR   Ignore duplications with length > N bp. [100K]
  type: boolean
  inputBinding:
    prefix: --max-dup-length
- id: cluster_max_length_perc_diff
  doc: INT   Do not cluster signatures with difference in length > P%. [25]
  type: boolean
  inputBinding:
    prefix: --cluster-max-length-perc-diff
- id: cluster_max_ref_pos_diff
  doc: STR   Do not cluster signatures > N bp apart in reference. [200]
  type: boolean
  inputBinding:
    prefix: --cluster-max-ref-pos-diff
- id: cluster_min_base_pair_perc_id
  doc: INT   Do not cluster signatures with basepair identity < P%. [10]
  type: boolean
  inputBinding:
    prefix: --cluster-min-basepair-perc-id
- id: max_consensus_coverage
  doc: INT   Limit to N reads for variant consensus. [20]
  type: boolean
  inputBinding:
    prefix: --max-consensus-coverage
- id: poa_scores
  doc: STR   Score POA alignment with triplet match,mismatch,gap. [1,-2,-2]
  type: boolean
  inputBinding:
    prefix: --poa-scores
- id: min_realign_length
  doc: STR   Consider segments with > N length for re-alignment. [100]
  type: boolean
  inputBinding:
    prefix: --min-realign-length
- id: call_min_reads_all_samples
  doc: INT   Ignore calls supported by < N reads total across samples. [2]
  type: boolean
  inputBinding:
    prefix: --call-min-reads-all-samples
- id: call_min_reads_one_sample
  doc: INT   Ignore calls supported by < N reads in every sample. [2]
  type: boolean
  inputBinding:
    prefix: --call-min-reads-one-sample
- id: call_min_reads_per_strand_all_samples
  doc: INT   Ignore calls supported by < N reads per strand total across samples [1]
  type: boolean
  inputBinding:
    prefix: --call-min-reads-per-strand-all-samples
- id: call_min_bnd_reads_all_samples
  doc: INT   Ignore BND calls supported by < N reads total across samples [2]
  type: boolean
  inputBinding:
    prefix: --call-min-bnd-reads-all-samples
- id: call_min_read_perc_one_sample
  doc: INT   Ignore calls supported by < P% of reads in every sample. [20]
  type: boolean
  inputBinding:
    prefix: --call-min-read-perc-one-sample
- id: ccs
  doc: 'CCS optimized parameters: -A 1 -O 1 -S 0 -P 10.'
  type: boolean
  inputBinding:
    prefix: --ccs
- id: gt_min_reads
  doc: INT   Minimum supporting reads to assign a sample a non-reference genotype.
    [1]
  type: boolean
  inputBinding:
    prefix: --gt-min-reads
- id: annotations
  doc: FILE  Annotate variants by comparing with sequences in fasta.Default annotations
    are ALU, L1, SVA.
  type: boolean
  inputBinding:
    prefix: --annotations
- id: annotation_min_perc_sim
  doc: INT   Annotate variant if sequence similarity > P%. [60]
  type: boolean
  inputBinding:
    prefix: --annotation-min-perc-sim
- id: min_n_in_gap
  doc: STR   Consider >= N consecutive "N" bp as a reference gap. [50]
  type: boolean
  inputBinding:
    prefix: --min-N-in-gap
- id: filter_near_reference_gap
  doc: STR   Flag variants < N bp from a gap as "NearReferenceGap". [1K]
  type: boolean
  inputBinding:
    prefix: --filter-near-reference-gap
- id: filter_near_contig_end
  doc: STR   Flag variants < N bp from a contig end as "NearContigEnd". [1K]
  type: boolean
  inputBinding:
    prefix: --filter-near-contig-end
- id: num_threads
  doc: INT   Number of threads to use, 0 means autodetection. [0]
  type: boolean
  inputBinding:
    prefix: --num-threads
- id: log_level
  doc: 'STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]'
  type: boolean
  inputBinding:
    prefix: --log-level
- id: log_file
  doc: FILE  Log to a file, instead of stderr.
  type: boolean
  inputBinding:
    prefix: --log-file
- id: ref_dot_out_dot_vcf
  doc: STR   Variant call format (VCF) output.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pbsv
- call
