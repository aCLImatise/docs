version 1.0

task PlotPCA {
  input {
    Boolean? transpose
    Boolean? row_center
    File? cordata
    File? plot_file
    String? labels
    String? plot_title
    File? plot_file_format
    String? plot_height
    String? plot_width
    File? out_filename_data
    String? ntop
    String? pcs
    Boolean? log_two
    Array[String] colors
    Array[String] markers
  }
  command <<<
    plotPCA \
      ~{true="--transpose" false="" transpose} \
      ~{true="--rowCenter" false="" row_center} \
      ~{if defined(cordata) then ("--corData " +  '"' + cordata + '"') else ""} \
      ~{if defined(plot_file) then ("--plotFile " +  '"' + plot_file + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(plot_title) then ("--plotTitle " +  '"' + plot_title + '"') else ""} \
      ~{if defined(plot_file_format) then ("--plotFileFormat " +  '"' + plot_file_format + '"') else ""} \
      ~{if defined(plot_height) then ("--plotHeight " +  '"' + plot_height + '"') else ""} \
      ~{if defined(plot_width) then ("--plotWidth " +  '"' + plot_width + '"') else ""} \
      ~{if defined(out_filename_data) then ("--outFileNameData " +  '"' + out_filename_data + '"') else ""} \
      ~{if defined(ntop) then ("--ntop " +  '"' + ntop + '"') else ""} \
      ~{if defined(pcs) then ("--PCs " +  '"' + pcs + '"') else ""} \
      ~{true="--log2" false="" log_two} \
      ~{if defined(colors) then ("--colors " +  '"' + colors + '"') else ""} \
      ~{if defined(markers) then ("--markers " +  '"' + markers + '"') else ""}
  >>>
  parameter_meta {
    transpose: "Perform the PCA on the transposed matrix, (i.e., on the matrix where rows are samples and columns are bins/features. This then matches what is typically done in R."
    row_center: "When specified, each row (bin, gene, etc.) in the matrix is centered at 0 before the PCA is computed. This is useful only if you have a strong bin/gene/etc. correlation and the resulting principal component has samples stacked vertically. This option is not applicable if --transpose is specified."
    cordata: "Coverage file (generated by multiBamSummary or multiBigwigSummary)"
    plot_file: "File name to save the plot to. The extension determines the file format. For example: pca.pdf will save the PCA plot in PDF format. The available options are: .png, .eps, .pdf and .svg. If this option is omitted, then you MUST specify --outFileNameData"
    labels: "sample2 [sample1 sample2 ...], -l sample1 sample2 [sample1 sample2 ...] User defined labels instead of default labels from file names. Multiple labels have to be separated by spaces, e.g. --labels sample1 sample2 sample3"
    plot_title: "Title of the plot, to be printed on top of the generated image. Leave blank for no title. (Default: )"
    plot_file_format: "Image format type. If given, this option overrides the image format based on the plotFile ending. The available options are: png, eps, pdf, plotly and svg."
    plot_height: "Plot height in cm. (Default: 10)"
    plot_width: "Plot width in cm. The minimum value is 1 cm. (Default: 10)"
    out_filename_data: "File name to which the data underlying the plot should be saved, such as myPCA.tab. For untransposed data, this is the loading per-sample and PC as well as the eigenvalues. For transposed data, this is the rotation per-sample and PC and the eigenvalues. The projections are truncated to the number of eigenvalues for transposed data."
    ntop: "Use only the top N most variable rows in the original matrix. Specifying 0 will result in all rows being used. If the matrix is to be transposed, rows with 0 variance are always excluded, even if a values of 0 is specified. The default is 1000. (Default: 1000)"
    pcs: "PCS         The principal components to plot. If specified, you must provide two different integers, greater than zero, separated by a space. An example (and the default) is \"1 2\". (Default: [1, 2])"
    log_two: "log2 transform the datapoints prior to computing the PCA. Note that 0.01 is added to all values to prevent 0 values from becoming -infinity. Using this option with input that contains negative values will result in an error."
    colors: "A list of colors for the symbols. Color names and html hex string (e.g., #eeff22) are accepted. The color names should be space separated. For example, --colors red blue green. If not specified, the symbols will be given automatic colors."
    markers: "A list of markers for the symbols. (e.g., '<','>','o') are accepted. The marker values should be space separated. For example, --markers 's' 'o' 's' 'o'. If not specified, the symbols will be given automatic shapes."
  }
}