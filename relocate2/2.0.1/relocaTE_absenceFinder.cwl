class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/relocaTE_absenceFinder.py_usr_target_genome_path.cwl
inputs:
- id: te
  doc: '= sys.argv[4] ## repeat to analyze: ALL or mPing/other te name '
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- relocaTE_absenceFinder.py
- usr_target
- genome_path
