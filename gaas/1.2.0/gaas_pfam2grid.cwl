class: CommandLineTool
id: ../../../gaas_pfam2grid.pl.cwl
inputs:
- id: fast_a
  doc: The name of the fasta file to read.
  type: string
  inputBinding:
    prefix: --fasta
- id: chunk_size
  doc: We create chunks with a maximum of $chunk_size sequences. By default 500.
  type: boolean
  inputBinding:
    prefix: --chunk_size
- id: hmm
  doc: File containing the pfam hmm models
  type: boolean
  inputBinding:
    prefix: --hmm
- id: queue
  doc: you want to define a particular queue to run the jobs
  type: string
  inputBinding:
    prefix: --queue
- id: grid
  doc: Define which grid to use, Slurm, Lsf or None. Default = Slurm.
  type: boolean
  inputBinding:
    prefix: --grid
- id: quiet
  doc: Quiet mode
  type: string
  inputBinding:
    prefix: --quiet
- id: outdir
  doc: The name of the output directory.
  type: string
  inputBinding:
    prefix: --outdir
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_pfam2grid.pl
