version 1.0

task TOFCalibration {
  input {
    File? in
    File? out
    File? ext_calib_rants
    File? ref_masses
    File? tof_const
    Boolean? peak_data
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    TOFCalibration \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(ext_calib_rants) then ("-ext_calibrants " +  '"' + ext_calib_rants + '"') else ""} \
      ~{if defined(ref_masses) then ("-ref_masses " +  '"' + ref_masses + '"') else ""} \
      ~{if defined(tof_const) then ("-tof_const " +  '"' + tof_const + '"') else ""} \
      ~{true="-peak_data" false="" peak_data} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    in: "*              Input peak or raw data file  (valid formats: 'mzML')"
    out: "*             Output file  (valid formats: 'mzML')"
    ext_calib_rants: "*  Input file containing the external calibrant spectra (peak or raw data) (valid formats: 'mzML')"
    ref_masses: "*      Input file containing reference masses of the external calibrant spectra (one per line) (valid formats: 'txt')"
    tof_const: "*       File containing TOF conversion constants. These can be either two or three constants per set, depending on the conversion type. Either one set for all calibrant spectra (tab separated), or one for each spectrum. For a detailed description, please have a look at the doxygen documentation.(one set, tab separated, per line) (valid formats: 'csv')"
    peak_data: "Set this flag, if you have peak data, not raw data (the picking parameters are accessible only from the INI file)."
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}