class: CommandLineTool
id: PhiSpy.py.cwl
inputs:
- id: in_file
  doc: Input file in genbank format
  type: string
  inputBinding:
    position: 0
- id: make_training_data
  doc: Create training data from a set of annotated genome files. Requires is_phage=1
    qualifier in prophage's CDSs
  type: string
  inputBinding:
    prefix: --make_training_data
- id: training_set
  doc: Choose the most closely related set to your genome.
  type: string
  inputBinding:
    prefix: --training_set
- id: list
  doc: List the available training sets and exit
  type: boolean
  inputBinding:
    prefix: --list
- id: e
  doc: '[EVALUATE], --evaluate [EVALUATE] Run in evaluation mode -- does not generate
    new data, but reruns the evaluation'
  type: boolean
  inputBinding:
    prefix: -e
- id: number
  doc: 'Number of consecutive genes in a region of window size that must be prophage
    genes to be called. [Default: 5]'
  type: string
  inputBinding:
    prefix: --number
- id: window_size
  doc: 'Window size of consecutive genes to look through to find phages. [Default:
    30]'
  type: string
  inputBinding:
    prefix: --window_size
- id: non_prophage_gene_gaps
  doc: 'The number of non phage genes betweeen prophages. [Default: 10]'
  type: string
  inputBinding:
    prefix: --nonprophage_genegaps
- id: random_forest_trees
  doc: 'Number of trees generated by Random Forest classifier. [Default: 500]'
  type: string
  inputBinding:
    prefix: --randomforest_trees
- id: expand_slope
  doc: Use the product of the slope of the Shannon scores in making test sets
  type: boolean
  inputBinding:
    prefix: --expand_slope
- id: km_ers_type
  doc: 'Type of kmers used for calculating Shannon scores. [Default: all]'
  type: string
  inputBinding:
    prefix: --kmers_type
- id: output_dir
  doc: The output directory to write the results
  type: string
  inputBinding:
    prefix: --output_dir
- id: qt
  doc: '[QUIET], --quiet [QUIET] Run in quiet mode'
  type: boolean
  inputBinding:
    prefix: -qt
- id: k
  doc: '[KEEP], --keep [KEEP] Do not delete temp files'
  type: boolean
  inputBinding:
    prefix: -k
- id: v
  doc: '[VERSION], --version [VERSION] Print the version and exit'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- PhiSpy.py
