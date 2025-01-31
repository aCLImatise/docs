class: CommandLineTool
id: RNAcofold.cwl
inputs:
- id: in_detailed_help
  doc: "Print help, including all details and hidden\noptions, and exit"
  type: boolean?
  inputBinding:
    prefix: --detailed-help
- id: in_full_help
  doc: Print help, including hidden options, and exit
  type: boolean?
  inputBinding:
    prefix: --full-help
- id: in_verbose
  doc: "Be verbose.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_jobs
  doc: "[=number]           Split batch input into jobs and start\nprocessing in parallel\
    \ using multiple\nthreads. A value of 0 indicates to use as\nmany parallel threads\
    \ as computation cores\nare available.\n(default=`0')"
  type: boolean?
  inputBinding:
    prefix: --jobs
- id: in_nops
  doc: Do not produce postscript drawing of the mfe
  type: boolean?
  inputBinding:
    prefix: --noPS
- id: in_noconv
  doc: "Do not automatically substitute nucleotide\n\"T\" with \"U\"\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noconv
- id: in_auto_id
  doc: "Automatically generate an ID for each sequence.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --auto-id
- id: in_id_prefix
  doc: "Prefix for automatically generated IDs (as used\nin output file names)\n(default=`sequence')"
  type: File?
  inputBinding:
    prefix: --id-prefix
- id: in_max_bp_span
  doc: "Set the maximum base pair span\n(default=`-1')"
  type: long?
  inputBinding:
    prefix: --maxBPspan
- id: in_constraint
  doc: "[=<filename>] Calculate structures subject to constraints.\n(default=`')"
  type: boolean?
  inputBinding:
    prefix: --constraint
- id: in_batch
  doc: "Use constraints for multiple sequences.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --batch
- id: in_canonical_bp_only
  doc: "Remove non-canonical base pairs from the\nstructure constraint\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --canonicalBPonly
- id: in_enforce_constraint
  doc: "Enforce base pairs given by round brackets ( )\nin structure constraint\n\
    (default=off)"
  type: boolean?
  inputBinding:
    prefix: --enforceConstraint
- id: in_shape
  doc: Use SHAPE reactivity data to guide structure
  type: File?
  inputBinding:
    prefix: --shape
- id: in_shape_conversion
  doc: "/C/S/L/O  + [optional parameters]\nSelect method to convert SHAPE reactivities\
    \ to\npairing probabilities.\n(default=`O')"
  type: string?
  inputBinding:
    prefix: --shapeConversion
- id: in_part_func
  doc: "[=INT]          Calculate the partition function and base\npairing probability\
    \ matrix in addition to the\nmfe structure. Default is calculation of mfe\nstructure\
    \ only.\n(default=`1')"
  type: boolean?
  inputBinding:
    prefix: --partfunc
- id: in_all_pf
  doc: "[=INT]            Compute the partition function and free\nenergies not only\
    \ of the hetero-dimer\nconsisting of the two input sequences (the\n\"AB dimer\"\
    ), but also of the homo-dimers AA\nand BB as well as A and B monomers.\n(default=`1')"
  type: boolean?
  inputBinding:
    prefix: --all_pf
- id: in_concentrations
  doc: "In addition to everything listed under the -a\noption, read in initial monomer\n\
    concentrations and compute the expected\nequilibrium concentrations of the 5 possible\n\
    species (AB, AA, BB, A, B).\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --concentrations
- id: in_conc_file
  doc: "Specify a file with initial concentrations for\nthe two sequences."
  type: File?
  inputBinding:
    prefix: --concfile
- id: in_centroid
  doc: "Compute the centroid structure.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --centroid
- id: in_me_a
  doc: "[=gamma]             Calculate an MEA (maximum expected accuracy)\nstructure,\
    \ where the expected accuracy is\ncomputed from the pair probabilities: each\n\
    base pair (i,j) gets a score 2*gamma*p_ij and\nthe score of an unpaired base is\
    \ given by the\nprobability of not forming a pair.\n(default=`1.')"
  type: boolean?
  inputBinding:
    prefix: --MEA
- id: in_g_quad
  doc: "Incoorporate G-Quadruplex formation into the\nstructure prediction algorithm.\n\
    (default=off)"
  type: boolean?
  inputBinding:
    prefix: --gquad
- id: in_temp
  doc: "Rescale energy parameters to a temperature of\ntemp C. Default is 37C."
  type: long?
  inputBinding:
    prefix: --temp
- id: in_no_tetra
  doc: "Do not include special tabulated stabilizing\nenergies for tri-, tetra- and\
    \ hexaloop\nhairpins.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noTetra
- id: in_dangles
  doc: "How to treat \"dangling end\" energies for\nbases adjacent to helices in free\
    \ ends and\nmulti-loops\n(default=`2')"
  type: long?
  inputBinding:
    prefix: --dangles
- id: in_no_lp
  doc: "Produce structures without lonely pairs\n(helices of length 1).\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noLP
- id: in_no_gu
  doc: "Do not allow GU pairs\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noGU
- id: in_no_closing_gu
  doc: "Do not allow GU pairs at the end of helices\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noClosingGU
- id: in_param_file
  doc: "Read energy parameters from paramfile, instead\nof using the default parameter\
    \ set."
  type: File?
  inputBinding:
    prefix: --paramFile
- id: in_structure_dot
  doc: (default=off)
  type: string
  inputBinding:
    position: 0
- id: in_predictions
  doc: --shapeMethod=[D/Z/W] + [optional parameters]
  type: string
  inputBinding:
    position: 0
- id: in_data_dot
  doc: (default=`D')
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_id_prefix
  doc: "Prefix for automatically generated IDs (as used\nin output file names)\n(default=`sequence')"
  type: File?
  outputBinding:
    glob: $(inputs.in_id_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- RNAcofold
