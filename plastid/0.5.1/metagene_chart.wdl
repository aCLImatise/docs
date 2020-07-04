version 1.0

task MetageneChart {
  input {
    Array[String] labels
    String? landmark
    Boolean? quiet
    Boolean? verbose
    String? fig_format
    String? fig_size
    String? title
    String? cmap
    String? dpi
    Boolean? stylesheet
    String out_base
    String in_files
  }
  command <<<
    metagene chart \
      ~{out_base} \
      ~{in_files} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(landmark) then ("--landmark " +  '"' + landmark + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(fig_format) then ("--figformat " +  '"' + fig_format + '"') else ""} \
      ~{if defined(fig_size) then ("--figsize " +  '"' + fig_size + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(cmap) then ("--cmap " +  '"' + cmap + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{true="--stylesheet" false="" stylesheet}
  >>>
  parameter_meta {
    labels: "Sample names for each metagene profile (optional)."
    landmark: "Name of landmark at zero point (e.g. 'CDS start' or 'CDS stop'; optional)"
    quiet: "Suppress all warning messages. Cannot use with '-v'."
    verbose: "Increase verbosity. With '-v', show every warning. With '-vv', turn warnings into exceptions. Cannot use with '-q'. (Default: show each type of warning once)"
    fig_format: "File format for figure(s); Default: png)"
    fig_size: "N         Figure width and height, in inches. (Default: use matplotlibrc params)"
    title: "Base title for plot(s)."
    cmap: "Matplotlib color map from which palette will be made (e.g. 'Blues','autumn','Set1'; default: use colors from ``--stylesheet`` if given, or color cycle in matplotlibrc)"
    dpi: "Figure resolution (Default: 150)"
    stylesheet: "{Solarize_Light2,_classic_test_patch,bmh,classic,dark_background,fast,fivethirtyeight,ggplot,grayscale,seaborn,seaborn-bright,seaborn-colorblind,seaborn-dark,seaborn-dark-palette,seaborn-darkgrid,seaborn-deep,seaborn-muted,seaborn-notebook,seaborn-paper,seaborn-pastel,seaborn-poster,seaborn-talk,seaborn-ticks,seaborn-white,seaborn-whitegrid,tableau-colorblind10} Use this matplotlib stylesheet instead of matplotlibrc params"
    out_base: "Basename for output file."
    in_files: "One or more metagene profiles, generated by the ``count`` subprogram, which will be plotted together."
  }
}