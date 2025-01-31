class: CommandLineTool
id: PlotRiboDensityAtEachKindAAOrCodon.cwl
inputs:
- id: in_input
  doc: "Input file in dataframe format (pd.DataFrame).\nGenerated by RiboDensityAtEachKindAAOrCodon.py"
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: Output files
  type: string?
  inputBinding:
    prefix: --output
- id: in_group
  doc: "Group name of each group separated by comma. e.g. 'si-\ncontrol,si-eIF3e'"
  type: long?
  inputBinding:
    prefix: --group
- id: in_replicate
  doc: "Replicate name of each group separated by comma. e.g.\n'si_3e_1_80S,si_3e_2_80S__si_cttl_1_80S,si_ctrl_2_80S'"
  type: long?
  inputBinding:
    prefix: --replicate
- id: in_ymax
  doc: The max of ylim. default=none
  type: long?
  inputBinding:
    prefix: --ymax
- id: in_ymin
  doc: The min of ylim. default=none
  type: long?
  inputBinding:
    prefix: --ymin
- id: in_level
  doc: "Control the plot in codon level or AA level.\ndefault=codon\n"
  type: string?
  inputBinding:
    prefix: --level
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ribominer:0.2.3.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- PlotRiboDensityAtEachKindAAOrCodon
