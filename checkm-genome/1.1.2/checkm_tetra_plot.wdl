version 1.0

task CheckmTetraPlot {
  input {
    String? image_type
    String? dpi
    String? font_size
    String? extension
    String? width
    String? height
    String? td_window_size
    String? td_bin_width
    Boolean? quiet
    String results_dir
    String bin_dir
    String output_dir
    String tetra_profile
    String dist_value
  }
  command <<<
    checkm tetra_plot \
      ~{results_dir} \
      ~{bin_dir} \
      ~{output_dir} \
      ~{tetra_profile} \
      ~{dist_value} \
      ~{if defined(image_type) then ("--image_type " +  '"' + image_type + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(font_size) then ("--font_size " +  '"' + font_size + '"') else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(height) then ("--height " +  '"' + height + '"') else ""} \
      ~{if defined(td_window_size) then ("--td_window_size " +  '"' + td_window_size + '"') else ""} \
      ~{if defined(td_bin_width) then ("--td_bin_width " +  '"' + td_bin_width + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    image_type: "desired image type (default: png)"
    dpi: "desired DPI of output image (default: 600)"
    font_size: "Desired font size (default: 8)"
    extension: "extension of bins (other files in directory are ignored) (default: fna)"
    width: "width of output image (default: 6.5)"
    height: "height of output image (default: 3.5)"
    td_window_size: "window size used to calculate TD histogram (default: 5000)"
    td_bin_width: "width of TD bars in histogram (default: 0.01)"
    quiet: "suppress console output"
    results_dir: "directory specified during qa command"
    bin_dir: "directory containing bins to plot (fasta format)"
    output_dir: "directory to hold plots"
    tetra_profile: "tetranucleotide profiles for each bin (see tetra command)"
    dist_value: "reference distribution(s) to plot; integer between 0 and 100"
  }
}