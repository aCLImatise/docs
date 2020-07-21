class: CommandLineTool
id: ../../../checkm_qa.cwl
inputs:
- id: out_format
  doc: 'desired output: (default: 1) 1. summary of bin completeness and contamination
    2. extended summary of bin statistics (includes GC, genome size, ...) 3. summary
    of bin quality for increasingly basal lineage-specific marker sets 4. list of
    marker genes and their counts 5. list of bin id, marker gene id, gene id 6. list
    of marker genes present multiple times in a bin 7. list of marker genes present
    multiple times on the same scaffold 8. list indicating position of each marker
    gene within a bin 9. FASTA file of marker genes identified in each bin'
  type: string
  inputBinding:
    prefix: --out_format
- id: exclude_markers
  doc: file specifying markers to exclude from marker sets
  type: string
  inputBinding:
    prefix: --exclude_markers
- id: individual_markers
  doc: treat marker as independent (i.e., ignore co-located set structure)
  type: boolean
  inputBinding:
    prefix: --individual_markers
- id: skip_adj_correction
  doc: do not exclude adjacent marker genes when estimating contamination
  type: boolean
  inputBinding:
    prefix: --skip_adj_correction
- id: skip_pseudogene_correction
  doc: skip identification and filtering of pseudogenes
  type: boolean
  inputBinding:
    prefix: --skip_pseudogene_correction
- id: aai_strain
  doc: 'AAI threshold used to identify strain heterogeneity (default: 0.9)'
  type: string
  inputBinding:
    prefix: --aai_strain
- id: alignment_file
  doc: produce file showing alignment of multi-copy genes and their AAI identity
  type: string
  inputBinding:
    prefix: --alignment_file
- id: ignore_thresholds
  doc: ignore model-specific score thresholds
  type: boolean
  inputBinding:
    prefix: --ignore_thresholds
- id: e_value
  doc: 'e-value cut off (default: 1e-10)'
  type: string
  inputBinding:
    prefix: --e_value
- id: length
  doc: 'percent overlap between target and query (default: 0.7)'
  type: long
  inputBinding:
    prefix: --length
- id: coverage_file
  doc: file containing coverage of each sequence; coverage information added to table
    type 2 (see coverage command)
  type: string
  inputBinding:
    prefix: --coverage_file
- id: file
  doc: 'print results to file (default: stdout)'
  type: File
  inputBinding:
    prefix: --file
- id: tab_table
  doc: print tab-separated values table
  type: boolean
  inputBinding:
    prefix: --tab_table
- id: threads
  doc: 'number of threads (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: quiet
  doc: suppress console output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: tmpdir
  doc: specify an alternative directory for temporary files
  type: string
  inputBinding:
    prefix: --tmpdir
- id: marker_file
  doc: marker file specified during analyze command
  type: string
  inputBinding:
    position: 0
- id: analyze_dir
  doc: directory specified during analyze command
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- checkm
- qa
