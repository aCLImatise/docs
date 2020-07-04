version 1.0

task OpenSwathWorkflow {
  input {
    File? in
    File? tr
    String? tr_type
    File? tr_irt
    File? out_features
    File? out_tsv
    File? out_osw
    String? rt_extraction_window
    String? ion_mobility_window
    String? mz_extraction_window
    Boolean? ppm
    Boolean? sonar
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    OpenSwathWorkflow \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(tr) then ("-tr " +  '"' + tr + '"') else ""} \
      ~{if defined(tr_type) then ("-tr_type " +  '"' + tr_type + '"') else ""} \
      ~{if defined(tr_irt) then ("-tr_irt " +  '"' + tr_irt + '"') else ""} \
      ~{if defined(out_features) then ("-out_features " +  '"' + out_features + '"') else ""} \
      ~{if defined(out_tsv) then ("-out_tsv " +  '"' + out_tsv + '"') else ""} \
      ~{if defined(out_osw) then ("-out_osw " +  '"' + out_osw + '"') else ""} \
      ~{if defined(rt_extraction_window) then ("-rt_extraction_window " +  '"' + rt_extraction_window + '"') else ""} \
      ~{if defined(ion_mobility_window) then ("-ion_mobility_window " +  '"' + ion_mobility_window + '"') else ""} \
      ~{if defined(mz_extraction_window) then ("-mz_extraction_window " +  '"' + mz_extraction_window + '"') else ""} \
      ~{true="-ppm" false="" ppm} \
      ~{true="-sonar" false="" sonar} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    in: "*                    Input files separated by blank (valid formats: 'mzML', 'mzXML', 'sqMass')"
    tr: "*                     Transition file ('TraML','tsv','pqp') (valid formats: 'traML', 'tsv', 'pqp')"
    tr_type: "Input file type -- default: determined from file extension or content (valid: 'traML', 'tsv', 'pqp')"
    tr_irt: "Transition file ('TraML') (valid formats: 'traML')"
    out_features: "Output file (valid formats: 'featureXML')"
    out_tsv: "TSV output file (mProphet compatible TSV file) (valid formats: 'tsv')"
    out_osw: "OSW output file (PyProphet compatible SQLite file) (valid formats: 'osw')"
    rt_extraction_window: "Only extract RT around this value (-1 means extract over the whole range, a value of 600 means to extract around +/- 300 s of the expected elution). (default: '600')"
    ion_mobility_window: "Extraction window in ion mobility dimension (in milliseconds). This is the full window size, e.g. a value of 10 milliseconds would extract 5 milliseconds on either side. (default: '-1')"
    mz_extraction_window: "Extraction window used (in Thomson, to use ppm see -ppm flag) (default: '0.05' min: '0')"
    ppm: "M/z extraction_window is in ppm"
    sonar: "Data is scanning SWATH data"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}