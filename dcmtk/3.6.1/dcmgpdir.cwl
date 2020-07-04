class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dcmgpdir.cwl
inputs:
- id: _quiet_print
  doc: --quiet                  quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: _verbose_verbose
  doc: --verbose                verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: _debug_debug
  doc: --debug                  debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: ll
  doc: '--log-level              [l]evel: string constant (fatal, error, warn, info,
    debug, trace) use level l for the logger'
  type: boolean
  inputBinding:
    prefix: -ll
- id: lc
  doc: '--log-config             [f]ilename: string use config file f for the logger'
  type: boolean
  inputBinding:
    prefix: -lc
- id: _abortinconsistfile_abort
  doc: --abort-inconsist-file   abort on first inconsistent file
  type: boolean
  inputBinding:
    prefix: -a
- id: no_xfer_check
  doc: do not reject images with non-standard transfer syntax (just warn)
  type: boolean
  inputBinding:
    prefix: --no-xfer-check
- id: _discard_write
  doc: --discard                do not write out DICOMDIR
  type: boolean
  inputBinding:
    prefix: -w
- id: nb
  doc: --no-backup              do not create a backup of existing DICOMDIR
  type: boolean
  inputBinding:
    prefix: -nb
- id: _disable_support
  doc: --disable-new-vr         disable support for new VRs, convert to OB
  type: boolean
  inputBinding:
    prefix: -u
- id: _lengthundefined_write
  doc: --length-undefined       write with undefined lengths
  type: boolean
  inputBinding:
    prefix: -e
- id: dcm_file_in
  doc: ref. DICOM file (or directory to be scanned)
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- dcmgpdir
