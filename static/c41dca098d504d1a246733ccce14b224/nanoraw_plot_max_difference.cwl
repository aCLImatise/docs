class: CommandLineTool
id: nanoraw_plot_max_difference.cwl
inputs:
- id: fast5_based_irs
  doc: Directories containing fast5 files.
  type: string[]
  inputBinding:
    prefix: --fast5-basedirs
- id: fast5_based_irs2
  doc: Second set of directories containing fast5 files to compare.
  type: string[]
  inputBinding:
    prefix: --fast5-basedirs2
- id: corrected_group
  doc: 'FAST5 group to access/plot created by genome_resquiggle script. Default: RawGenomeCorrected_000'
  type: string
  inputBinding:
    prefix: --corrected-group
- id: over_plot_threshold
  doc: 'Number of reads to trigger alternative plot type instead of raw signal due
    to overplotting. Default: 50'
  type: string
  inputBinding:
    prefix: --overplot-threshold
- id: over_plot_type
  doc: 'Plot type for regions with higher coverage. Choices: Downsample (default),
    Boxplot , Quantile, Violin'
  type: string
  inputBinding:
    prefix: --overplot-type
- id: obs_per_base_filter
  doc: Filter reads for plotting baseed on threshold of percentiles of the number
    of observations assigned to a base (default no filter). Format thresholds as "percentile:thresh
    [pctl2:thresh2 ...]" E.g. reads with 99th pctl <200 obs and max <5k obs would
    be "99:200 100:5000".
  type: string[]
  inputBinding:
    prefix: --obs-per-base-filter
- id: pdf_filename
  doc: 'PDF filename to store plot(s). Default: Nanopore_read_coverage.max_difference.pdf'
  type: string
  inputBinding:
    prefix: --pdf-filename
- id: sequences_filename
  doc: 'Filename to store sequences for selected regions (e.g. for PWM search). Sequences
    will be stored in FASTA format. Default: None.'
  type: string
  inputBinding:
    prefix: --sequences-filename
- id: num_regions
  doc: 'Number of regions to plot. Default: 10'
  type: string
  inputBinding:
    prefix: --num-regions
- id: num_bases
  doc: 'Number of bases to plot from region. Default: 51'
  type: string
  inputBinding:
    prefix: --num-bases
- id: quiet
  doc: Don't print status information.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- nanoraw
- plot_max_difference
