version 1.0

task _gdparttopng {
  input {
    String gd_part_to_png
    File filename_dot_gd
    File filename_dot_png
    String x
    String y
    String w
    String h
  }
  command <<<
    _gdparttopng \
      ~{gd_part_to_png} \
      ~{filename_dot_gd} \
      ~{filename_dot_png} \
      ~{x} \
      ~{y} \
      ~{w} \
      ~{h}
  >>>
  parameter_meta {
    gd_part_to_png: ""
    filename_dot_gd: ""
    filename_dot_png: ""
    x: ""
    y: ""
    w: ""
    h: ""
  }
}