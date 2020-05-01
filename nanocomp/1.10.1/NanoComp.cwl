#!/usr/bin/env cwl-runner

baseCommand:
- NanoComp
class: CommandLineTool
cwlVersion: v1.0
id: nanocomp
inputs:
- doc: Set the allowed number of threads to be used by the script
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Specify directory in which output has to be created.
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: Specify an optional prefix to be used for the output files.
  id: prefix
  inputBinding:
    prefix: --prefix
  type: string
- doc: Write log messages also to terminal.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Store the extracted data in tab separated file.
  id: raw
  inputBinding:
    prefix: --raw
  type: boolean
- doc: Store the extracted data in a pickle file for future plotting.
  id: store
  inputBinding:
    prefix: --store
  type: boolean
- doc: '{1D,2D,1D2} Which read type to extract information about from summary. Options
    are 1D, 2D, 1D2'
  id: read_type
  inputBinding:
    prefix: --readtype
  type: boolean
- doc: Drop reads longer than length specified.
  id: maxlength
  inputBinding:
    prefix: --maxlength
  type: string
- doc: Drop reads shorter than length specified.
  id: minlength
  inputBinding:
    prefix: --minlength
  type: string
- doc: Barcoded experiment in summary format, splitting per barcode.
  id: barcoded
  inputBinding:
    prefix: --barcoded
  type: boolean
- doc: "File: Split the summary on run IDs and use names in tsv file. Mandatory header\
    \ fields are 'NAME' and 'RUN_ID'."
  id: split_runs
  inputBinding:
    prefix: --split_runs
  type: string
- doc: Specify the output format of the plots.
  id: format
  inputBinding:
    prefix: --format
  type: string
- doc: Specify the names to be used for the datasets
  id: names
  inputBinding:
    prefix: --names
  type:
    items: string
    type: array
- doc: Specify the colors to be used for the datasets
  id: colors
  inputBinding:
    prefix: --colors
  type:
    items: string
    type: array
- doc: "Which plot type to use: 'box', 'violin' (default), 'ridge' (joyplot) or 'false'\
    \ (no plots)"
  id: plot
  inputBinding:
    prefix: --plot
  type: string
- doc: Add a title to all plots, requires quoting if using spaces
  id: title
  inputBinding:
    prefix: --title
  type: string
- doc: Set the dpi for saving images
  id: dpi
  inputBinding:
    prefix: --dpi
  type: string
- doc: Data is in (compressed) fasta format.
  id: fast_a
  inputBinding:
    prefix: --fasta
  type:
    items: File
    type: array
- doc: Data is in (compressed) fastq format.
  id: fast_q
  inputBinding:
    prefix: --fastq
  type:
    items: File
    type: array
- doc: Data is in (compressed) summary files generated by albacore or guppy.
  id: summary
  inputBinding:
    prefix: --summary
  type:
    items: File
    type: array
- doc: Data is in sorted bam files.
  id: bam
  inputBinding:
    prefix: --bam
  type:
    items: File
    type: array
- doc: Data is in one or more unmapped bam file(s).
  id: ub_am
  inputBinding:
    prefix: --ubam
  type:
    items: File
    type: array
- doc: Data is in one or more sorted cram file(s).
  id: cram
  inputBinding:
    prefix: --cram
  type:
    items: File
    type: array
