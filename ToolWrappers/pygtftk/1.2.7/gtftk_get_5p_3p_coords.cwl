class: CommandLineTool
id: gtftk_get_5p_3p_coords.cwl
inputs:
- id: in_input_file
  doc: 'Path to the GTF file. Default to STDIN (default: <stdin>)'
  type: boolean?
  inputBinding:
    prefix: --inputfile
- id: in_output_file
  doc: 'Output file (BED). (default: <stdout>)'
  type: File?
  inputBinding:
    prefix: --outputfile
- id: in_ft_type
  doc: 'The target feature (as found in the 3rd column of the GTF). (default: transcript)'
  type: boolean?
  inputBinding:
    prefix: --ft-type
- id: in_invert
  doc: "Get 3' coordinate. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --invert
- id: in_transpose
  doc: "Transpose coordinate in 5' (use negative value) or in 3' (use positive values).\
    \ (default: 0)"
  type: boolean?
  inputBinding:
    prefix: --transpose
- id: in_names
  doc: 'The key(s) that should be used as name. (default: gene_id,transcript_id)'
  type: boolean?
  inputBinding:
    prefix: --names
- id: in_more_names
  doc: "A comma-separated list of information to be added to the 'name' column of\
    \ the bed file. (default: None)"
  type: boolean?
  inputBinding:
    prefix: --more-names
- id: in_separator
  doc: 'The separator to be used for separating name elements (see -n). (default:
    |)'
  type: boolean?
  inputBinding:
    prefix: --separator
- id: in_explicit
  doc: 'Write explicitly the name of the keys in the header. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --explicit
- id: in_verbosity
  doc: 'Set output verbosity ([0-3]). (default: 0)'
  type: boolean?
  inputBinding:
    prefix: --verbosity
- id: in_no_date
  doc: 'Do not add date to output file names. (default: False)'
  type: File?
  inputBinding:
    prefix: --no-date
- id: in_add_chr
  doc: "Add 'chr' to chromosome names before printing output. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --add-chr
- id: in_tmp_dir
  doc: 'Keep all temporary files into this folder. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --tmp-dir
- id: in_keep_all
  doc: 'Try to keep all temporary files even if process does not terminate normally.
    (default: False)'
  type: boolean?
  inputBinding:
    prefix: --keep-all
- id: in_logger_file
  doc: 'Stores the arguments passed to the command into a file. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --logger-file
- id: in_write_message_to_file
  doc: 'Store all message into a file. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --write-message-to-file
- id: in_arguments
  doc: 'Arguments:'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: 'Output file (BED). (default: <stdout>)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_no_date
  doc: 'Do not add date to output file names. (default: False)'
  type: File?
  outputBinding:
    glob: $(inputs.in_no_date)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pygtftk:1.2.7--py36h4edd4cd_1
cwlVersion: v1.1
baseCommand:
- gtftk
- get_5p_3p_coords
