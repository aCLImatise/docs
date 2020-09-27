class: CommandLineTool
id: peakranger_wig.cwl
inputs:
- id: in_arg_data_file
  doc: '[ --data ] arg               data file'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_format
  doc: "the format of the data file, can be one of :\nbowtie, sam, bam and bed"
  type: File
  inputBinding:
    prefix: --format
- id: in_arg_output_location
  doc: '[ --output ] arg             the output location'
  type: boolean
  inputBinding:
    prefix: -o
- id: in_generate_one_wig_file_chromosome
  doc: '[ --split ]                  generate one wig file per chromosome'
  type: boolean
  inputBinding:
    prefix: -s
- id: in__compress_output
  doc: '[ --gzip ]                   compress the output'
  type: boolean
  inputBinding:
    prefix: -z
- id: in_generate_one_wig_file_strand
  doc: '[ --strand ]                 generate one wig file per strand'
  type: boolean
  inputBinding:
    prefix: -x
- id: in_arg_read_length
  doc: '[ --ext_length ] arg (=200)  read extension length'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_verbose
  doc: show progress
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- peakranger
- wig
