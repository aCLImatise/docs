class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/_wobble.cwl
inputs:
- id: graph
  doc: xygraph    [$EMBOSS_GRAPHICS value, or png] Graph type (ps, hpgl, hp7470, hp7580,
    meta, cps, tek, tekt, none, data, png, gif, svg)
  type: boolean
  inputBinding:
    prefix: -graph
outputs: []
cwlVersion: v1.1
baseCommand:
- _wobble
