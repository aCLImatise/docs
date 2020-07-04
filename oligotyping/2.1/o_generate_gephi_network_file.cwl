class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/o_generate_gephi_network_file.cwl
inputs:
- id: sample_mapping
  doc: Providing a sample mapping file will make Gephi file much more useful.
  type: File
  inputBinding:
    prefix: --sample-mapping
- id: unit_mapping
  doc: Structurally, unit mapping is identical to sample mapping file, instead, it
    describes properties of units.
  type: File
  inputBinding:
    prefix: --unit-mapping
- id: sample_size
  doc: 'Sample node size. Default: 8'
  type: long
  inputBinding:
    prefix: --sample-size
- id: unit_size
  doc: 'Unit node size. Default: 2'
  type: long
  inputBinding:
    prefix: --unit-size
- id: min_abundance
  doc: Minimum abundance of a unit to be included in the network. It usually a good
    idea to give some cut-off since each unit (whether it is an oligotype or an MED
    node) is going to be a part of the network (total number of reads divided by 10,000
    might be a good start).
  type: long
  inputBinding:
    prefix: --min-abundance
- id: min_sum_normalized_percent
  doc: This defines the minimum sum normalized percent for an oligotype or MED node
    in a sample to form an edge in the network. Sum normalization takes an oligotype
    or MED node, generates a vector from its percent occurence in all samples, then
    normalizes the percent abundances so the total of the vector adds up to 100%.
    The default is 1, but it might be a good idea to set it to 0 for samples with
    a lot of samples (such as more than 100 samples).
  type: long
  inputBinding:
    prefix: --min-sum-normalized-percent
- id: skip_sample_labels
  doc: Leave sample labels blank.
  type: boolean
  inputBinding:
    prefix: --skip-sample-labels
- id: skip_unit_labels
  doc: Leave unit labels blank.
  type: boolean
  inputBinding:
    prefix: --skip-unit-labels
- id: file
  doc: Environment file that is generated by the pipeline
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- o-generate-gephi-network-file
