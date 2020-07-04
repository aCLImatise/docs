class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/enrichm_annotate.cwl
inputs:
- id: log
  doc: Output logging information to this file.
  type: string
  inputBinding:
    prefix: --log
- id: verbosity
  doc: Level of verbosity (1 - 5 - default = 4) 5 = Very verbose, 1 = Silent
  type: string
  inputBinding:
    prefix: --verbosity
- id: output
  doc: Output directory
  type: string
  inputBinding:
    prefix: --output
- id: force
  doc: Overwrite previous run
  type: boolean
  inputBinding:
    prefix: --force
- id: genome_files
  doc: Space separated list of genomes to annotate
  type: string[]
  inputBinding:
    prefix: --genome_files
- id: genome_directory
  doc: Directory containing genomes to annotate
  type: string
  inputBinding:
    prefix: --genome_directory
- id: protein_files
  doc: Space separated list of .faa files of genomes to annotate. Protein files need
    to be generated by prodigal.
  type: string[]
  inputBinding:
    prefix: --protein_files
- id: protein_directory
  doc: Directory containing .faa files of genomes to annotate. Protein files need
    to be generated by prodigal.
  type: string
  inputBinding:
    prefix: --protein_directory
- id: ko
  doc: Annotate with KO ids
  type: boolean
  inputBinding:
    prefix: --ko
- id: ko_hmm
  doc: Annotate with KO ids
  type: boolean
  inputBinding:
    prefix: --ko_hmm
- id: pfam
  doc: Annotate with Pfam HMMs
  type: boolean
  inputBinding:
    prefix: --pfam
- id: tigr_fam
  doc: Annotate with TIGRFAM HMMs
  type: boolean
  inputBinding:
    prefix: --tigrfam
- id: clusters
  doc: Annotate with cluster ids
  type: boolean
  inputBinding:
    prefix: --clusters
- id: orthologs
  doc: Annotate with ortholog ids
  type: boolean
  inputBinding:
    prefix: --orthologs
- id: ca_zy
  doc: Annotate with dbCAN HMMs
  type: boolean
  inputBinding:
    prefix: --cazy
- id: ec
  doc: Annotate with EC ids
  type: boolean
  inputBinding:
    prefix: --ec
- id: cut_ga
  doc: 'For PFAM and TIGRfam searches: use profiles GA gathering cutoffs to set all
    thresholding'
  type: boolean
  inputBinding:
    prefix: --cut_ga
- id: cut_nc
  doc: 'For PFAM and TIGRfam searches: use profiles NC noise cutoffs to set all thresholding'
  type: boolean
  inputBinding:
    prefix: --cut_nc
- id: cut_tc
  doc: 'For PFAM and TIGRfam searches: use profiles TC trusted cutoffs to set all
    thresholding'
  type: boolean
  inputBinding:
    prefix: --cut_tc
- id: cut_ko
  doc: 'For KO HMM annotation searches: use cutoffs defined by KEGG to maximise F-score.'
  type: boolean
  inputBinding:
    prefix: --cut_ko
- id: evalue
  doc: 'Use this evalue cutoff to filter false positives (default: 1e-05)'
  type: string
  inputBinding:
    prefix: --evalue
- id: bit
  doc: 'Use this bit score cutoff to filter false positives (default: 0)'
  type: string
  inputBinding:
    prefix: --bit
- id: id
  doc: 'Use this percent identity cutoff to filter false positives (default: 0.3)'
  type: string
  inputBinding:
    prefix: --id
- id: aln_query
  doc: 'This fraction of the query must align to the reference (default: 0.7)'
  type: string
  inputBinding:
    prefix: --aln_query
- id: aln_reference
  doc: 'This fraction of the reference must align to the query (default: 0.7)'
  type: string
  inputBinding:
    prefix: --aln_reference
- id: when_clustering_matches
  doc: 'When clustering, use matches above this fraction of aligned (covered) query
    and target residues (default: 0.7)'
  type: string
  inputBinding:
    prefix: --c
- id: threads
  doc: 'Use this number of threads when annotating with BLAST and HMMsearch (default:
    1)'
  type: string
  inputBinding:
    prefix: --threads
- id: parallel
  doc: 'Run this number of jobs in parallel when annotating with HMMsearch (default:
    5)'
  type: string
  inputBinding:
    prefix: --parallel
- id: inflation
  doc: Inflation factor to use when calling clusters in ortholog (default = 5.0)
  type: string
  inputBinding:
    prefix: --inflation
- id: suffix
  doc: 'Treat files ending with this suffix within the --genome_directory as genomes
    (default: .fna for --genome_directory and .faa for )'
  type: string
  inputBinding:
    prefix: --suffix
- id: light
  doc: Don't store metadata for genome files (can't use enrichM compare downstream,
    default=False)
  type: boolean
  inputBinding:
    prefix: --light
- id: count_domains
  doc: Fill the frequency matrix with the total number of times an annotation was
    detected (for example, when one domain more than once within a protein), rather
    than the count of proteins with with that annotation
  type: boolean
  inputBinding:
    prefix: --count_domains
- id: chunk_number
  doc: Split loading of genomes into this many chunks (default = 4)
  type: string
  inputBinding:
    prefix: --chunk_number
- id: chunk_max
  doc: Maximum number of genomes to load per chunk (default = 2500)
  type: string
  inputBinding:
    prefix: --chunk_max
outputs: []
cwlVersion: v1.1
baseCommand:
- enrichm
- annotate
