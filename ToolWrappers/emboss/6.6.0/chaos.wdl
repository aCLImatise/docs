version 1.0

task Chaos {
  input {
    Boolean? graph
  }
  command <<<
    chaos \
      ~{if (graph) then "-graph" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    graph: "graph      [$EMBOSS_GRAPHICS value, or png] Graph type\\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\\ntekt, none, data, png, gif, svg)"
  }
  output {
    File out_stdout = stdout()
  }
}