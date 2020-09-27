class: CommandLineTool
id: nanoraw_plot_multi_correction.cwl
inputs:
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_corrected_group
  doc: "FAST5 group to access/plot created by\ngenome_resquiggle script. Default:\n\
    RawGenomeCorrected_000"
  type: long
  inputBinding:
    prefix: --corrected-group
- id: in_base_call_subgroups
  doc: "FAST5 subgroup (under Analyses/[corrected-group])\nwhere individual template\
    \ and/or complement reads are\nstored. Default: ['BaseCalled_template']"
  type: string[]
  inputBinding:
    prefix: --basecall-subgroups
- id: in_pdf_filename
  doc: "PDF filename to store plot(s). Default:\nNanopore_genome_multiread_correction.pdf"
  type: File
  inputBinding:
    prefix: --pdf-filename
- id: in_genome_locations
  doc: "Plot signal at specified genomic locations. Format\nlocations as \"chrm:position[:strand]\n\
    [chrm2:position2[:strand2] ...]\" (strand not\napplicable for all applications)"
  type: string[]
  inputBinding:
    prefix: --genome-locations
- id: in_include_original_base_calls
  doc: Iclude original basecalls in plots.
  type: boolean
  inputBinding:
    prefix: --include-original-basecalls
- id: in_num_reads_per_plot
  doc: 'Number of reads to plot per genomic region. Default: 5'
  type: long
  inputBinding:
    prefix: --num-reads-per-plot
- id: in_num_regions
  doc: 'Number of regions to plot. Default: 10'
  type: long
  inputBinding:
    prefix: --num-regions
- id: in_num_obs
  doc: "Number of observations to plot in each region.\nDefault: 500"
  type: long
  inputBinding:
    prefix: --num-obs
- id: in_quiet
  doc: Don't print status information.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nanoraw
- plot_multi_correction
