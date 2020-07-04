class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bismark2summary.cwl
inputs:
- id: oslash_basename
  doc: Basename of the output file (optional). Generate a text file with all relevant
    extracted values ('basename.txt') as well as an HTML report ('basename.html').
    If not specified explicitly, the the basename is 'bismark_summary_report'.
  type: File
  inputBinding:
    prefix: -o/--basename
- id: title
  doc: "Optional HTML report title; use --title \"speech marks for text with spaces\"\
    . Default:  'Bismark Summary Report'.                           "
  type: string
  inputBinding:
    prefix: --title
outputs: []
cwlVersion: v1.1
baseCommand:
- bismark2summary
