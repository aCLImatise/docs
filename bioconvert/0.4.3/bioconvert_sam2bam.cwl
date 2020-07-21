class: CommandLineTool
id: ../../../bioconvert_sam2bam.cwl
inputs:
- id: force
  doc: 'if outfile exists, it is overwritten with this option (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
- id: verbosity
  doc: 'Set the outpout verbosity. (default: ERROR)'
  type: string
  inputBinding:
    prefix: --verbosity
- id: raise_exception
  doc: 'Let exception ending the execution be raised and displayed (default: False)'
  type: boolean
  inputBinding:
    prefix: --raise-exception
- id: batch
  doc: "Allow conversion of a set of files using wildcards. You must use quotes to\
    \ escape the wildcards. For instance: --batch 'test*fastq' (default: False)"
  type: boolean
  inputBinding:
    prefix: --batch
- id: benchmark
  doc: 'Running all available methods (default: False)'
  type: boolean
  inputBinding:
    prefix: --benchmark
- id: benchmark_n
  doc: 'Number of trials for each methods (default: 5)'
  type: string
  inputBinding:
    prefix: --benchmark-N
- id: benchmark_methods
  doc: 'Methods to include (default: all)'
  type: string[]
  inputBinding:
    prefix: --benchmark-methods
- id: allow_indirect_conversion
  doc: 'Allow to chain converter when direct conversion is absent (default: False)'
  type: boolean
  inputBinding:
    prefix: --allow-indirect-conversion
- id: extra_arguments
  doc: "Any arguments accepted by the method's tool (default: )"
  type: string
  inputBinding:
    prefix: --extra-arguments
- id: method_use_conversion
  doc: '[{samtools}], --method [{samtools}] The method to use to do the conversion.
    (default: samtools)'
  type: boolean
  inputBinding:
    prefix: -m
- id: show_methods
  doc: 'A converter may have several methods (default: False)'
  type: boolean
  inputBinding:
    prefix: --show-methods
- id: threads
  doc: 'threads to be used (default: 8)'
  type: string
  inputBinding:
    prefix: --threads
- id: input_file
  doc: 'The path to the file to convert. (default: None)'
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: 'The path where the result will be stored. (default: None)'
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bioconvert
- sam2bam
