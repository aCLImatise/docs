class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bedtools_subtract.cwl
inputs:
- id: remove_entire_feature
  doc: Remove entire feature if any overlap.  That is, by default, only subtract the
    portion of A that overlaps B. Here, if any overlap is found (or -f amount), the
    entire feature is removed.
  type: boolean
  inputBinding:
    prefix: -A
- id: same_when_used
  doc: Same as -A except when used with -f, the amount is the sum of all features
    (not any single feature).
  type: boolean
  inputBinding:
    prefix: -N
- id: wb
  doc: Write the original entry in B for each overlap. - Useful for knowing _what_
    A overlaps. Restricted by -f and -r.
  type: boolean
  inputBinding:
    prefix: -wb
- id: wo
  doc: Write the original A and B entries plus the number of base pairs of overlap
    between the two features. - Overlaps restricted by -f and -r. Only A features
    with overlap are reported.
  type: boolean
  inputBinding:
    prefix: -wo
- id: require_same_strandedness
  doc: Require same strandedness.  That is, only report hits in B that overlap A on
    the _same_ strand. - By default, overlaps are reported without respect to strand.
  type: boolean
  inputBinding:
    prefix: -s
- id: require_different_strandedness
  doc: Require different strandedness.  That is, only report hits in B that overlap
    A on the _opposite_ strand. - By default, overlaps are reported without respect
    to strand.
  type: boolean
  inputBinding:
    prefix: -S
- id: minimum_overlap_a
  doc: Minimum overlap required as a fraction of A. - Default is 1E-9 (i.e., 1bp).
    - FLOAT (e.g. 0.50)
  type: boolean
  inputBinding:
    prefix: -f
- id: minimum_overlap_b
  doc: Minimum overlap required as a fraction of B. - Default is 1E-9 (i.e., 1bp).
    - FLOAT (e.g. 0.50)
  type: boolean
  inputBinding:
    prefix: -F
- id: require_fraction_overlap
  doc: Require that the fraction overlap be reciprocal for A AND B. - In other words,
    if -f is 0.90 and -r is used, this requires that B overlap 90% of A and A _also_
    overlaps 90% of B.
  type: boolean
  inputBinding:
    prefix: -r
- id: require_minimum_fraction
  doc: Require that the minimum fraction be satisfied for A OR B. - In other words,
    if -e is used with -f 0.90 and -F 0.10 this requires that either 90% of A is covered
    OR 10% of  B is covered. Without -e, both fractions would have to be satisfied.
  type: boolean
  inputBinding:
    prefix: -e
- id: split
  doc: Treat "split" BAM or BED12 entries as distinct BED intervals.
  type: boolean
  inputBinding:
    prefix: -split
- id: provide_genome_file
  doc: Provide a genome file to enforce consistent chromosome sort order across input
    files. Only applies when used with -sorted option.
  type: boolean
  inputBinding:
    prefix: -g
- id: no_name_check
  doc: For sorted data, don't throw an error if the file has different naming conventions
    for the same chromosome. ex. "chr1" vs "chr01".
  type: boolean
  inputBinding:
    prefix: -nonamecheck
- id: sorted
  doc: the "chromsweep" algorithm for sorted (-k1,1 -k2,2n) input.
  type: string
  inputBinding:
    prefix: -sorted
- id: bed
  doc: If using BAM input, write output as BED.
  type: boolean
  inputBinding:
    prefix: -bed
- id: header
  doc: the header from the A file prior to results.
  type: string
  inputBinding:
    prefix: -header
- id: no_buf
  doc: Disable buffered output. Using this option will cause each line of output to
    be printed as it is generated, rather than saved in a buffer. This will make printing
    large output files  noticeably slower, but can be useful in conjunction with other
    software tools and scripts that need to process one line of bedtools output at
    a time.
  type: boolean
  inputBinding:
    prefix: -nobuf
- id: i_obuf
  doc: 'Specify amount of memory to use for input buffer. Takes an integer argument.
    Optional suffixes K/M/G supported. Note: currently has no effect with compressed
    files.'
  type: boolean
  inputBinding:
    prefix: -iobuf
- id: var_18
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- subtract
