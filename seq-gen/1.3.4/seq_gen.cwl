class: CommandLineTool
id: ../../../seq_gen.cwl
inputs:
- id: _sequence_length
  doc: ': # = sequence length [default = 1000].'
  type: boolean
  inputBinding:
    prefix: -l
- id: simulated_datasets_tree
  doc: ': # = simulated datasets per tree [default = 1].'
  type: boolean
  inputBinding:
    prefix: -n
- id: number_partitions_trees
  doc: ': # = number of partitions (and trees) per sequence [default = 1].'
  type: boolean
  inputBinding:
    prefix: -p
- id: branch_length_factor
  doc: ': # = branch length scaling factor [default = 1.0].'
  type: boolean
  inputBinding:
    prefix: -s
- id: total_tree_scale
  doc: ': # = total tree scale [default = use branch lengths].'
  type: boolean
  inputBinding:
    prefix: -d
- id: use_sequence_k
  doc: ': # = use sequence k as ancestral (needs alignment) [default = random].'
  type: boolean
  inputBinding:
    prefix: -k
- id: model_gtr_jtt
  doc: ': MODEL = HKY, F84, GTR, JTT, WAG, PAM, BLOSUM, MTREV, CPREV45, MTART, LG,
    GENERAL HKY, F84 & GTR are for nucleotides the rest are for amino acids'
  type: boolean
  inputBinding:
    prefix: -m
- id: shape_alpha_gamma
  doc: ': # = shape (alpha) for gamma rate heterogeneity [default = none].'
  type: boolean
  inputBinding:
    prefix: -a
- id: number_gamma_rate
  doc: ': # = number of gamma rate categories [default = continuous].'
  type: boolean
  inputBinding:
    prefix: -g
- id: proportion_invariable_sites
  doc: ': # = proportion of invariable sites [default = 0.0].'
  type: boolean
  inputBinding:
    prefix: -i
- id: rates_codon_position
  doc: ': #1 #2 #3 = rates for codon position heterogeneity [default = none].'
  type: boolean
  inputBinding:
    prefix: -c
- id: _transitiontransversion_ratio
  doc: ': # = transition-transversion ratio [default = equal rate].'
  type: boolean
  inputBinding:
    prefix: -t
- id: general_rate_matrix
  doc: ': #1 #2 #3 #4 #5 #6= general rate matrix [default = all 1.0].'
  type: boolean
  inputBinding:
    prefix: -r
- id: c_g_t
  doc: ': #A #C #G #T = nucleotide frequencies [default = all equal].'
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- seq-gen
