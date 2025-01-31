class: CommandLineTool
id: msisensor_pro_pro.cwl
inputs:
- id: in_string_homopolymers_microsatellites
  doc: <string>   homopolymers and microsatellites file
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_string_bam_file
  doc: <string>   tumor bam file
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_string_output_prefix
  doc: <string>   output prefix
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_string_file_optional
  doc: <string>   bed file, optional
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_double_minimal_threshold
  doc: <double>   minimal threshold for instable sites detection (just for tumor only
    data), default=0.1
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_int_coverage_threshold
  doc: '<int>      coverage threshold for msi analysis, WXS: 20; WGS: 15, default=15'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_string_choose_format
  doc: '<string>   choose one region, format: 1:10000000-20000000'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_int_minimal_homopolymer
  doc: <int>      minimal homopolymer size for distribution analysis, default=8
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_int_maximal_homopolymer
  doc: <int>      maximal homopolymer size for distribution analysis, default=50
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_int_minimal_microsatellite
  doc: <int>      minimal microsatellite size for distribution analysis, default=5
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_int_maximal_size
  doc: <int>      maximal microsatellite size for distribution analysis, default=40
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_int_span_size
  doc: <int>      span size around window for extracting reads, default=500
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_int_threads_number
  doc: <int>      threads number for parallel computing, default=1
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_int_output_homopolymer
  doc: '<int>      output homopolymer only, 0: no; 1: yes, default=0'
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_int_output_microsatellite
  doc: '<int>      output microsatellite only, 0: no; 1: yes, default=0'
  type: boolean?
  inputBinding:
    prefix: -y
- id: in_int_output_site
  doc: '<int>      output site have no read coverage, 1: no; 0: yes, default=0'
  type: boolean?
  inputBinding:
    prefix: '-0'
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/msisensor-pro:1.1.a--hb3646a4_0
cwlVersion: v1.1
baseCommand:
- msisensor-pro
- pro
