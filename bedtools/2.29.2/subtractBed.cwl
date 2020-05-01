#!/usr/bin/env cwl-runner

baseCommand:
- subtractBed
class: CommandLineTool
cwlVersion: v1.0
id: subtractbed
inputs:
- doc: Remove entire feature if any overlap.  That is, by default, only subtract the
    portion of A that overlaps B. Here, if any overlap is found (or -f amount), the
    entire feature is removed.
  id: a
  inputBinding:
    prefix: -A
  type: boolean
- doc: Same as -A except when used with -f, the amount is the sum of all features
    (not any single feature).
  id: n
  inputBinding:
    prefix: -N
  type: boolean
- doc: Write the original entry in B for each overlap. - Useful for knowing _what_
    A overlaps. Restricted by -f and -r.
  id: wb
  inputBinding:
    prefix: -wb
  type: boolean
- doc: Write the original A and B entries plus the number of base pairs of overlap
    between the two features. - Overlaps restricted by -f and -r. Only A features
    with overlap are reported.
  id: wo
  inputBinding:
    prefix: -wo
  type: boolean
- doc: Require same strandedness.  That is, only report hits in B that overlap A on
    the _same_ strand. - By default, overlaps are reported without respect to strand.
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: Require different strandedness.  That is, only report hits in B that overlap
    A on the _opposite_ strand. - By default, overlaps are reported without respect
    to strand.
  id: s
  inputBinding:
    prefix: -S
  type: boolean
- doc: Minimum overlap required as a fraction of A. - Default is 1E-9 (i.e., 1bp).
    - FLOAT (e.g. 0.50)
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: Minimum overlap required as a fraction of B. - Default is 1E-9 (i.e., 1bp).
    - FLOAT (e.g. 0.50)
  id: f
  inputBinding:
    prefix: -F
  type: boolean
- doc: Require that the fraction overlap be reciprocal for A AND B. - In other words,
    if -f is 0.90 and -r is used, this requires that B overlap 90% of A and A _also_
    overlaps 90% of B.
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: Require that the minimum fraction be satisfied for A OR B. - In other words,
    if -e is used with -f 0.90 and -F 0.10 this requires that either 90% of A is covered
    OR 10% of  B is covered. Without -e, both fractions would have to be satisfied.
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: Treat "split" BAM or BED12 entries as distinct BED intervals.
  id: split
  inputBinding:
    prefix: -split
  type: boolean
- doc: Provide a genome file to enforce consistent chromosome sort order across input
    files. Only applies when used with -sorted option.
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: For sorted data, don't throw an error if the file has different naming conventions
    for the same chromosome. ex. "chr1" vs "chr01".
  id: no_name_check
  inputBinding:
    prefix: -nonamecheck
  type: boolean
- doc: the "chromsweep" algorithm for sorted (-k1,1 -k2,2n) input.
  id: sorted
  inputBinding:
    prefix: -sorted
  type: string
- doc: If using BAM input, write output as BED.
  id: bed
  inputBinding:
    prefix: -bed
  type: boolean
- doc: the header from the A file prior to results.
  id: header
  inputBinding:
    prefix: -header
  type: string
- doc: Disable buffered output. Using this option will cause each line of output to
    be printed as it is generated, rather than saved in a buffer. This will make printing
    large output files  noticeably slower, but can be useful in conjunction with other
    software tools and scripts that need to process one line of bedtools output at
    a time.
  id: no_buf
  inputBinding:
    prefix: -nobuf
  type: boolean
- doc: 'Specify amount of memory to use for input buffer. Takes an integer argument.
    Optional suffixes K/M/G supported. Note: currently has no effect with compressed
    files.'
  id: i_obuf
  inputBinding:
    prefix: -iobuf
  type: boolean
