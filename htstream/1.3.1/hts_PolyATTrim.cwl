class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hts_PolyATTrim.cwl
inputs:
- id: _version_print
  doc: '[ --version ]                      Version print'
  type: boolean
  inputBinding:
    prefix: -v
- id: arg_notes_stats
  doc: '[ --notes ] arg                    Notes for the stats JSON'
  type: boolean
  inputBinding:
    prefix: -N
- id: arg_statslog_write
  doc: '[ --stats-file ] arg (=stats.log)  Write to stats file name'
  type: boolean
  inputBinding:
    prefix: -L
- id: arg_append_stats
  doc: '[ --append-stats-file ] arg        Append to stats file name'
  type: boolean
  inputBinding:
    prefix: -A
- id: one
  doc: '[ --read1-input ] arg              Read 1 paired end fastq input <space  separated
    for multiple files>'
  type: boolean
  inputBinding:
    prefix: '-1'
- id: two
  doc: '[ --read2-input ] arg              Read 2 paired end fastq input <space  separated
    for multiple files>'
  type: boolean
  inputBinding:
    prefix: '-2'
- id: arg_single_end
  doc: '[ --singleend-input ] arg          Single end read fastq input <space  separated
    for multiple files>'
  type: boolean
  inputBinding:
    prefix: -U
- id: arg_interleaved_fastq
  doc: '[ --interleaved-input ] arg        Interleaved fastq input <space  separated
    for multiple files>'
  type: boolean
  inputBinding:
    prefix: -I
- id: arg_tabdelimited_tab
  doc: '[ --tab-input ] arg                Tab-delimited (tab6) input <space  separated
    for multiple files>'
  type: boolean
  inputBinding:
    prefix: -T
- id: forces_overwrite_files
  doc: '[ --force ]                        Forces overwrite of files'
  type: boolean
  inputBinding:
    prefix: -F
- id: output_uncompressed_gzipped
  doc: '[ --uncompressed ]                 Output uncompressed (not gzipped) files'
  type: boolean
  inputBinding:
    prefix: -u
- id: arg_output_fastq
  doc: '[ --fastq-output ] arg             Output to Fastq files <PE AND/OR SE  files>'
  type: boolean
  inputBinding:
    prefix: -f
- id: arg_output_interleaved
  doc: '[ --interleaved-output ] arg       Output to interleaved fastq files  <INTERLEAVED
    PE AND/OR SE files>'
  type: boolean
  inputBinding:
    prefix: -i
- id: arg_output_tabdelimited
  doc: '[ --tab-output ] arg               Output to tab-delimited (tab6) file'
  type: boolean
  inputBinding:
    prefix: -t
- id: arg_output_unmapped
  doc: '[ --unmapped-output ] arg          Output to unmapped sam file'
  type: boolean
  inputBinding:
    prefix: -z
- id: turns_trimming_left
  doc: '[ --no-left ]                      Turns off trimming of the left side of  the
    read'
  type: boolean
  inputBinding:
    prefix: -l
- id: turns_trimming_right
  doc: '[ --no-right ]                     Turns off trimming of the right side of
    the read'
  type: boolean
  inputBinding:
    prefix: -r
- id: skip_check_polya
  doc: '[ --skip_polyA ]                   Skip check for polyA sequence'
  type: boolean
  inputBinding:
    prefix: -j
- id: skip_check_polyt
  doc: '[ --skip_polyT ]                   Skip check for polyT sequence'
  type: boolean
  inputBinding:
    prefix: -k
- id: arg_window_size
  doc: '[ --window-size ] arg (=6)         Window size in which to trim (min 1,  max
    10000)'
  type: boolean
  inputBinding:
    prefix: -w
- id: arg_max_percent
  doc: '[ --max-mismatch-errorDensity ] arg (=0.29999999999999999) Max percent of
    mismatches allowed in  overlapped section (min 0.0, max 1.0)'
  type: boolean
  inputBinding:
    prefix: -e
- id: arg_number_windows
  doc: '[ --perfect-windows ] arg (=1)     Number perfect match windows needed  before
    a match is reported  (min 1, max 10000)'
  type: boolean
  inputBinding:
    prefix: -c
- id: arg_min_base
  doc: '[ --min-trim ] arg (=5)            Min base pairs trim for AT tail (min 1,
    max 10000)'
  type: boolean
  inputBinding:
    prefix: -M
- id: arg_max_size
  doc: '[ --max-trim ] arg (=30)           Max size a polyAT can be (min 0, max  10000)'
  type: boolean
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- hts_PolyATTrim
