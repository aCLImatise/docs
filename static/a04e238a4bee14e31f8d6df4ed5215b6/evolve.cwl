class: CommandLineTool
id: evolve.py.cwl
inputs:
- id: ssm_file
  doc: File listing SSMs (simple somatic mutations, i.e., single nucleotide variants.
    For proper format, see README.md.
  type: string
  inputBinding:
    position: 0
- id: cnv_file
  doc: File listing CNVs (copy number variations). For proper format, see README.md.
  type: string
  inputBinding:
    position: 1
- id: output_dir
  doc: 'Path to output directory (default: None)'
  type: string
  inputBinding:
    prefix: --output-dir
- id: write_backups_every
  doc: 'Number of iterations to go between writing backups of program state (default:
    100)'
  type: string
  inputBinding:
    prefix: --write-backups-every
- id: write_state_every
  doc: 'Number of iterations between writing program state to disk. Higher values
    reduce IO burden at the cost of losing progress made if program is interrupted.
    (default: 10)'
  type: string
  inputBinding:
    prefix: --write-state-every
- id: burnin_samples
  doc: 'Number of burnin samples (default: 1000)'
  type: string
  inputBinding:
    prefix: --burnin-samples
- id: mcmc_samples
  doc: 'Number of MCMC samples (default: 2500)'
  type: string
  inputBinding:
    prefix: --mcmc-samples
- id: mh_iterations
  doc: 'Number of Metropolis-Hastings iterations (default: 5000)'
  type: string
  inputBinding:
    prefix: --mh-iterations
- id: random_seed
  doc: 'Random seed for initializing MCMC sampler (default: None)'
  type: string
  inputBinding:
    prefix: --random-seed
- id: tmp_dir
  doc: 'Path to directory for temporary files (default: None)'
  type: string
  inputBinding:
    prefix: --tmp-dir
- id: params
  doc: 'JSON file listing run parameters, generated by the parser (default: None)'
  type: string
  inputBinding:
    prefix: --params
outputs: []
cwlVersion: v1.1
baseCommand:
- evolve.py
