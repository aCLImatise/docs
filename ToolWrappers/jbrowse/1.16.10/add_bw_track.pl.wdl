version 1.0

task Addbwtrackpl {
  input {
    String? bicolor_pivot
    Boolean? plot
    String? pos_color
    String? neg_color
    File? in
    File? out
    File? bw_url
    String? label
    String? key
    Boolean? category
    String? classname
    Boolean? mismatches
    Boolean? coverage
    String? min_score
    String? max_score
    String? clip_marker_color
    String? bg_color
    String? height
    Boolean? config
    String add_bw_track_do_tpl
  }
  command <<<
    add_bw_track_pl \
      ~{add_bw_track_do_tpl} \
      ~{if defined(bicolor_pivot) then ("--bicolor_pivot " +  '"' + bicolor_pivot + '"') else ""} \
      ~{if (plot) then "--plot" else ""} \
      ~{if defined(pos_color) then ("--pos_color " +  '"' + pos_color + '"') else ""} \
      ~{if defined(neg_color) then ("--neg_color " +  '"' + neg_color + '"') else ""} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(bw_url) then ("--bw_url " +  '"' + bw_url + '"') else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if (category) then "--category" else ""} \
      ~{if defined(classname) then ("--classname " +  '"' + classname + '"') else ""} \
      ~{if (mismatches) then "--mismatches" else ""} \
      ~{if (coverage) then "--coverage" else ""} \
      ~{if defined(min_score) then ("--min_score " +  '"' + min_score + '"') else ""} \
      ~{if defined(max_score) then ("--max_score " +  '"' + max_score + '"') else ""} \
      ~{if defined(clip_marker_color) then ("--clip_marker_color " +  '"' + clip_marker_color + '"') else ""} \
      ~{if defined(bg_color) then ("--bg_color " +  '"' + bg_color + '"') else ""} \
      ~{if defined(height) then ("--height " +  '"' + height + '"') else ""} \
      ~{if (config) then "--config" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/jbrowse:1.16.10--pl526hc9558a2_0"
  }
  parameter_meta {
    bicolor_pivot: "point where to set pivot for color changes - can be \\\"mean\\\", \\\"zero\\\",\\nor a numeric value [default: zero]"
    plot: "display as XY plot instead of density heatmap"
    pos_color: "CSS color for positive side of pivot [default: blue]"
    neg_color: "CSS color for negative side of pivot [default: red]"
    in: "input trackList.json file. Default: data/trackList.json."
    out: "Output trackList.json file. Default: data/trackList.json."
    bw_url: "URL to BigWig file (can be relative to the trackList.json)"
    label: "unique track label for the new track."
    key: "key (display name) for track [default: label value]"
    category: "\\\"Category Name / Subcategory Name\\\"\\ntrack category. Used by the default Hierarchical track selector."
    classname: "CSS class for display [default: bam]"
    mismatches: "display mismatches in alignment (generates no subfeatures)"
    coverage: "display coverage data instead of alignments"
    min_score: "optional minimum score to be graphed"
    max_score: "optional maximum score to be graphed"
    clip_marker_color: "optional clip marker color"
    bg_color: "optional background color"
    height: "optional height"
    config: "'{ \\\"my_key\\\": \\\"my_value\\\", ... }'\\noptional additional data to include in the track configuration. Any\\nvalues provided here will override the values generated by the rest\\nof the script.\\n"
    add_bw_track_do_tpl: "[ --in <input_trackList.json> ]                    \\\\n[ --out <output_trackList.json> ]                  \\\\n--label <track_label>                              \\\\n--bw_url <url_to_big_wig_file>                     \\\\n[ --key <track_key> ]                              \\\\n[ --category 'Category in JBrowse' ]               \\\\n[ --plot ]                                         \\\\n[ --bicolor_pivot <pivot_for_changing_colors> ]    \\\\n[ --pos_color <color_for_positive_side_of_pivot> ] \\\\n[ --neg_color <color_for_negative_side_of_pivot> ] \\\\n[ --min_score <min_score> ]                        \\\\n[ --max_score <max_score> ]                        \\\\n[ --clip_marker_color <color> ]                    \\\\n[ --bg_color <color> ]                             \\\\n[ --height <value> ]                               \\\\n[ -h|--help ]"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}