class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/Circle_Map_bam2bam.cwl
inputs:
- id: input_bam_file
  doc: 'Input: bam file containing the reads extracted by ReadExtractor'
  type: boolean
  inputBinding:
    prefix: -i
- id: qb_am
  doc: 'Input: query name sorted bam file'
  type: boolean
  inputBinding:
    prefix: -qbam
- id: fast_a
  doc: 'Input: Reference genome fasta file'
  type: boolean
  inputBinding:
    prefix: -fasta
- id: _output_output
  doc: ', --output         Output BAM name'
  type: boolean
  inputBinding:
    prefix: -o
- id: _nhits_number
  doc: ', --nhits          Number of realignment attempts. Default: 10'
  type: boolean
  inputBinding:
    prefix: -n
- id: _probability_considering
  doc: ', --cut_off        Probability cut-off for considering a soft-clipped as realigned:
    Default: 0.99'
  type: boolean
  inputBinding:
    prefix: -p
- id: _minsc_minimum
  doc: ', --min_sc         Minimum soft-clipped length to attempt the realignment.
    Default: 8'
  type: boolean
  inputBinding:
    prefix: -m
- id: _gapopen_gap
  doc: ', --gap_open       Gap open penalty in the position specific scoring matrix.
    Default: 5'
  type: boolean
  inputBinding:
    prefix: -g
- id: _gap_extension
  doc: ', --gap_ext        Gap extension penalty in the position specific scoring
    matrix. Default: 1'
  type: boolean
  inputBinding:
    prefix: -e
- id: _mapq_minimum
  doc: ', --mapq           Minimum mapping quality allowed in the supplementary alignments.
    Default: 20'
  type: boolean
  inputBinding:
    prefix: -q
- id: _editdistancefraction_maximum
  doc: ', --edit_distance-fraction  Maximum edit distance fraction allowed in the
    first realignment. Default (0.05)'
  type: boolean
  inputBinding:
    prefix: -d
- id: _splitquality_minium
  doc: ', --split_quality  Minium split score to output an interval. Default (0.0)'
  type: boolean
  inputBinding:
    prefix: -Q
- id: remap_splits
  doc: Remap probabilistacally bwa-mem split reads
  type: boolean
  inputBinding:
    prefix: --remap_splits
- id: iq
  doc: ', --insert_mapq   Mapq cutoff for stimating the insert size distribution.
    Default 60'
  type: boolean
  inputBinding:
    prefix: -iq
- id: sd
  doc: ', --std           Standard deviations of the insert size to extend the intervals.
    Default 5'
  type: boolean
  inputBinding:
    prefix: -sd
- id: _samplesize_number
  doc: ', --sample_size    Number of concordant reads (R2F1) to use for estimating
    the insert size distribution. Default 100000'
  type: boolean
  inputBinding:
    prefix: -s
- id: _intervalprobability_skip
  doc: ', --interval_probability  Skip edges of the graph with a probability below
    the threshold. Default: 0.01'
  type: boolean
  inputBinding:
    prefix: -P
- id: _clusteringdist_cluster
  doc: ', --clustering_dist  Cluster reads that are K nucleotides appart in the same
    node. Default: 500'
  type: boolean
  inputBinding:
    prefix: -K
- id: only_discordant_s
  doc: Use only discordant reads to build the graph
  type: boolean
  inputBinding:
    prefix: --only_discordants
- id: _threads_number
  doc: ', --threads        Number of threads to use.Default 1'
  type: boolean
  inputBinding:
    prefix: -t
- id: dir
  doc: ', --directory    Working directory, default is the working directory'
  type: boolean
  inputBinding:
    prefix: -dir
- id: _verbose_level
  doc: ', --verbose        Verbose level, 1=error,2=warning, 3=message'
  type: boolean
  inputBinding:
    prefix: -v
- id: circle_map
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: realign
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- Circle-Map
- bam2bam
