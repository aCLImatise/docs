class: CommandLineTool
id: ../../../MzXML2Search.cwl
inputs:
- id: num_the_first
  doc: <num>      where num is an int specifying the first scan
  type: boolean
  inputBinding:
    prefix: -F
- id: num_the_last
  doc: <num>      where num is an int specifying the last scan
  type: boolean
  inputBinding:
    prefix: -L
- id: n_where_n
  doc: '<n1>[-<n2>]     "force charge(s)": where n1 is an integer specifying the precursor
    charge state (or possible charge range from n1 to n2 inclusive) to use; this option
    forces input scans to be output with the user-specified charge (or charge range)'
  type: boolean
  inputBinding:
    prefix: -C
- id: scans_precursor_charge
  doc: '<n1>[-<n2>]     "suggest charge(s)": for scans which do not have a precursor
    charge (or charge range) already determined in the input file, use the user-specified
    charge (or charge range) for those scans.  Input scans which already have defined
    charge (or charge range) are output with their original, unchanged values.'
  type: boolean
  inputBinding:
    prefix: -c
- id: num_minimum_mh
  doc: <num>      where num is a float specifying minimum MH+ mass, default=600.0
    Da
  type: boolean
  inputBinding:
    prefix: -B
- id: num_where_maximum
  doc: <num>      where num is a float specifying maximum MH+ mass, default=5000.0
    Da
  type: boolean
  inputBinding:
    prefix: -T
- id: num_where_minimum
  doc: <num>      where num is an int specifying minimum peak count, default=5
  type: boolean
  inputBinding:
    prefix: -P
- id: num_where_max
  doc: <num>      where num is an int specifying max peak count using most intense
    peaks, default=0 to print all peaks
  type: boolean
  inputBinding:
    prefix: -N
- id: pm
  doc: <num>     where num is an int specifying mass precision in peaklist, default=4
  type: boolean
  inputBinding:
    prefix: -pm
- id: pi
  doc: <num>     where num is an int specifying intensity precision in peaklist, default=0
  type: boolean
  inputBinding:
    prefix: -pi
- id: minimum_minimum_threshold
  doc: <num>      where num is a float specifying minimum threshold for peak intensity,
    default=0.01
  type: boolean
  inputBinding:
    prefix: -I
- id: nwhere_n_int
  doc: <n1>[-<n2>]where n1 is an int specifying MS level to export (default=2) and
    n2 specifies an optional range of MS levels to export
  type: boolean
  inputBinding:
    prefix: -M
- id: str_where_str
  doc: <str>      where str is the activation method, "CID", "ETD", or "HCD" if this
    option is not specified, then all scans are included
  type: boolean
  inputBinding:
    prefix: -A
- id: num_maximum_reported
  doc: <num>      maximum reported charge state for scans that do have a precursor
    charge; useful when scan has a high charge that search engines can't handle. No
    charge is reported if charge is larger than max value, default=7.
  type: boolean
  inputBinding:
    prefix: -Z
- id: remove_chargereduced_precursors
  doc: remove charge-reduced precursors from the spectra (suitable for ETD).
  type: boolean
  inputBinding:
    prefix: -X
- id: remove_itraq_peaks
  doc: remove iTRAQ reporter peaks in the range 112-122 Th.
  type: boolean
  inputBinding:
    prefix: -Q
- id: remove_reporter_peaks
  doc: remove TMT reporter peaks in the range 126-132 Th.
  type: boolean
  inputBinding:
    prefix: -G
outputs: []
cwlVersion: v1.1
baseCommand:
- MzXML2Search
