#!/usr/bin/env cwl-runner

baseCommand:
- closestBed
class: CommandLineTool
cwlVersion: v1.0
id: closestbed
inputs:
- doc: In addition to the closest feature in B,  report its distance to A as an extra
    column. - The reported distance for overlapping features will be 0.
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: 'Like -d, report the closest feature in B, and its distance to A as an extra
    column. Unlike -d, use negative distances to report upstream features. The options
    for defining which orientation is "upstream" are: - "ref"   Report distance with
    respect to the reference genome.  B features with a lower (start, stop) are upstream
    - "a"     Report distance with respect to A. When A is on the - strand, "upstream"
    means B has a higher (start,stop). - "b"     Report distance with respect to B.
    When B is on the - strand, "upstream" means A has a higher (start,stop).'
  id: d
  inputBinding:
    prefix: -D
  type: boolean
- doc: Ignore features in B that overlap A.  That is, we want close, yet not touching
    features only.
  id: io
  inputBinding:
    prefix: -io
  type: boolean
- doc: Ignore features in B that are upstream of features in A. This option requires
    -D and follows its orientation rules for determining what is "upstream".
  id: iu
  inputBinding:
    prefix: -iu
  type: boolean
- doc: Ignore features in B that are downstream of features in A. This option requires
    -D and follows its orientation rules for determining what is "downstream".
  id: id
  inputBinding:
    prefix: -id
  type: boolean
- doc: Choose first from features in B that are upstream of features in A. This option
    requires -D and follows its orientation rules for determining what is "upstream".
  id: fu
  inputBinding:
    prefix: -fu
  type: boolean
- doc: Choose first from features in B that are downstream of features in A. This
    option requires -D and follows its orientation rules for determining what is "downstream".
  id: fd
  inputBinding:
    prefix: -fd
  type: boolean
- doc: 'How ties for closest feature are handled.  This occurs when two features in
    B have exactly the same "closeness" with A. By default, all such features in B
    are reported. Here are all the options: - "all"    Report all ties (default).
    - "first"  Report the first tie that occurred in the B file. - "last"   Report
    the last tie that occurred in the B file.'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: How multiple databases are resolved. - "each"    Report closest records for
    each database (default). - "all"  Report closest records among all databases.
  id: mdb
  inputBinding:
    prefix: -mdb
  type: boolean
- doc: Report the k closest hits. Default is 1. If tieMode = "all",  - all ties will
    still be reported.
  id: k
  inputBinding:
    prefix: -k
  type: boolean
- doc: Require that the query and the closest hit have different names. For BED, the
    4th column is compared.
  id: n
  inputBinding:
    prefix: -N
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
- doc: When using multiple databases, provide an alias for each that will appear instead
    of a fileId when also printing the DB record.
  id: names
  inputBinding:
    prefix: -names
  type: boolean
- doc: When using multiple databases, show each complete filename instead of a fileId
    when also printing the DB record.
  id: filenames
  inputBinding:
    prefix: -filenames
  type: boolean
- doc: When using multiple databases, sort the output DB hits for each record.
  id: sort_out
  inputBinding:
    prefix: -sortout
  type: boolean
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
