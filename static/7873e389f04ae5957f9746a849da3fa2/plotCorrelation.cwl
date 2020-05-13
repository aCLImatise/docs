class: CommandLineTool
id: plotCorrelation.cwl
inputs:
- id: cordata
  doc: Compressed matrix of values generated by multiBigwigSummary or multiBamSummary
  type: File
  inputBinding:
    prefix: --corData
- id: cor_method
  doc: Correlation method.
  type: string
  inputBinding:
    prefix: --corMethod
- id: what_to_plot
  doc: Choose between a heatmap or pairwise scatter plots
  type: string
  inputBinding:
    prefix: --whatToPlot
- id: plot_file
  doc: 'File to save the heatmap to. The file extension determines the format, so
    heatmap.pdf will save the heatmap in PDF format. The available formats are: .png,
    .eps, .pdf and .svg.'
  type: File
  inputBinding:
    prefix: --plotFile
- id: skip_zeros
  doc: By setting this option, genomic regions that have zero or missing (nan) values
    in all samples are excluded.
  type: boolean
  inputBinding:
    prefix: --skipZeros
- id: labels
  doc: sample2 [sample1 sample2 ...], -l sample1 sample2 [sample1 sample2 ...] User
    defined labels instead of default labels from file names. Multiple labels have
    to be separated by spaces, e.g. --labels sample1 sample2 sample3
  type: string
  inputBinding:
    prefix: --labels
- id: plot_title
  doc: 'Title of the plot, to be printed on top of the generated image. Leave blank
    for no title. (Default: )'
  type: string
  inputBinding:
    prefix: --plotTitle
- id: plot_file_format
  doc: 'Image format type. If given, this option overrides the image format based
    on the plotFile ending. The available options are: png, eps, pdf and svg.'
  type: File
  inputBinding:
    prefix: --plotFileFormat
- id: remove_outliers
  doc: If set, bins with very large counts are removed. Bins with abnormally high
    reads counts artificially increase pearson correlation; that's why, multiBamSummary
    tries to remove outliers using the median absolute deviation (MAD) method applying
    a threshold of 200 to only consider extremely large deviations from the median.
    The ENCODE blacklist page  (https://sites.google.com/site/anshulkundaje/projects/
    blacklists) contains useful information about regions with unusually high countsthat
    may be worth removing.
  type: boolean
  inputBinding:
    prefix: --removeOutliers
- id: outfile_cor_matrix
  doc: Save matrix with pairwise correlation values to a tab- separated file.
  type: File
  inputBinding:
    prefix: --outFileCorMatrix
- id: plot_height
  doc: 'Plot height in cm. (Default: 9.5)'
  type: string
  inputBinding:
    prefix: --plotHeight
- id: plot_width
  doc: 'Plot width in cm. The minimum value is 1 cm. (Default: 11)'
  type: string
  inputBinding:
    prefix: --plotWidth
- id: zmin
  doc: Minimum value for the heatmap intensities. If not specified, the value is set
    automatically
  type: string
  inputBinding:
    prefix: --zMin
- id: zmax
  doc: Maximum value for the heatmap intensities.If not specified, the value is set
    automatically
  type: string
  inputBinding:
    prefix: --zMax
- id: colormap
  doc: 'Color map to use for the heatmap. Available values can be seen here: http://matplotlib.org/examples/color/col
    ormaps_reference.html'
  type: boolean
  inputBinding:
    prefix: --colorMap
- id: plot_numbers
  doc: If set, then the correlation number is plotted on top of the heatmap. This
    option is only valid when plotting a heatmap.
  type: boolean
  inputBinding:
    prefix: --plotNumbers
- id: x_range
  doc: XRANGE The X axis range. The default scales these such that the full range
    of dots is displayed.
  type: string
  inputBinding:
    prefix: --xRange
- id: y_range
  doc: YRANGE The Y axis range. The default scales these such that the full range
    of dots is displayed.
  type: string
  inputBinding:
    prefix: --yRange
- id: log1p
  doc: Plot the natural log of the scatter plot after adding 1. Note that this is
    ONLY for plotting, the correlation is unaffected.
  type: boolean
  inputBinding:
    prefix: --log1p
outputs: []
cwlVersion: v1.1
baseCommand:
- plotCorrelation
