class: CommandLineTool
id: ../../../TOBIAS_PlotTracks.cwl
inputs:
- id: bigwigs
  doc: '[ [ ...]]  One or more bigwigs to show. Note: All bigwigs within one "-- bigwigs"
    argument will be normalized to each other. It is possible to give multiple "--bigwigs"
    arguments, which will be normalized independently per group (required)'
  type: boolean
  inputBinding:
    prefix: --bigwigs
- id: regions
  doc: Genomic regions to plot (required)
  type: boolean
  inputBinding:
    prefix: --regions
- id: sites
  doc: Genomic sites to show in plot (optional)
  type: boolean
  inputBinding:
    prefix: --sites
- id: highlight
  doc: Regions to highlight in plot (optional)
  type: boolean
  inputBinding:
    prefix: --highlight
- id: gtf
  doc: GTF file containing genes to show (optional)
  type: boolean
  inputBinding:
    prefix: --gtf
- id: width
  doc: Width of plot in cm (default 15)
  type: boolean
  inputBinding:
    prefix: --width
- id: colors
  doc: '[ [ ...]]   List of specific colors to use for plotting tracks'
  type: boolean
  inputBinding:
    prefix: --colors
- id: labels
  doc: '[ [ ...]]   Labels for tracks (default: prefix of bigwig)'
  type: boolean
  inputBinding:
    prefix: --labels
- id: max_transcripts
  doc: 'Set a limit on number of transcripts per gene shown in plot (default: 1)'
  type: boolean
  inputBinding:
    prefix: --max-transcripts
- id: outdir
  doc: 'Output folder (default: plottracks_output)'
  type: boolean
  inputBinding:
    prefix: --outdir
- id: verbosity
  doc: 'Level of output logging (0: silent, 1: errors/warnings, 2: info, 3: stats,
    4: debug, 5: spam) (default: 3)'
  type: long
  inputBinding:
    prefix: --verbosity
outputs: []
cwlVersion: v1.1
baseCommand:
- TOBIAS
- PlotTracks
