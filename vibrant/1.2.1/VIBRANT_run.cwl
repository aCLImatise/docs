class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/VIBRANT_run.py.cwl
inputs:
- id: input_fasta_file
  doc: input fasta file
  type: string
  inputBinding:
    prefix: -i
- id: format_of_input
  doc: format of input [default="nucl"]
  type: string
  inputBinding:
    prefix: -f
- id: folder
  doc: path to deposit output folder and temporary files, will create if doesn't exist
    [default= working directory]
  type: Directory
  inputBinding:
    prefix: -folder
- id: number_parallel_vibrant
  doc: number of parallel VIBRANT runs, each occupies 1 CPU [default=1, max of 1 CPU
    per scaffold]
  type: string
  inputBinding:
    prefix: -t
- id: length_limit_sequences
  doc: length in basepairs to limit input sequences [default=1000, can increase but
    not decrease]
  type: string
  inputBinding:
    prefix: -l
- id: number_limit_sequences
  doc: number of ORFs per scaffold to limit input sequences [default=4, can increase
    but not decrease]
  type: string
  inputBinding:
    prefix: -o
- id: vi_rome
  doc: use this setting if dataset is known to be comprised mainly of viruses. More
    sensitive to viruses, less sensitive to false identifications [default=off]
  type: boolean
  inputBinding:
    prefix: -virome
- id: no_plot
  doc: suppress the generation of summary plots [default=off]
  type: boolean
  inputBinding:
    prefix: -no_plot
- id: path_original_hmm
  doc: path to original "databases" directory that contains .HMM files (if moved from
    default location)
  type: string
  inputBinding:
    prefix: -d
- id: path_tsv_moved
  doc: path to original "files" directory that contains .tsv and model files (if moved
    from default location)
  type: string
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- VIBRANT_run.py
