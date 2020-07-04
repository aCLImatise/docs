version 1.0

task FeatureFinderIdentification {
  input {
    File? in
    File? id
    File? id_ext
    File? out
    File? lib_out
    File? chrom_out
    File? candidates_out
    Boolean? model
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    FeatureFinderIdentification \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(id) then ("-id " +  '"' + id + '"') else ""} \
      ~{if defined(id_ext) then ("-id_ext " +  '"' + id_ext + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(lib_out) then ("-lib_out " +  '"' + lib_out + '"') else ""} \
      ~{if defined(chrom_out) then ("-chrom_out " +  '"' + chrom_out + '"') else ""} \
      ~{if defined(candidates_out) then ("-candidates_out " +  '"' + candidates_out + '"') else ""} \
      ~{true="-model" false="" model} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    in: "*                        Input file: LC-MS raw data (valid formats: 'mzML')"
    id: "*                        Input file: Peptide identifications derived directly from 'in' (valid formats: 'idXML')"
    id_ext: "Input file: 'External' peptide identifications (e.g. from aligned runs) (valid formats: 'idXML')"
    out: "*                       Output file: Features (valid formats: 'featureXML')"
    lib_out: "Output file: Assay library (valid formats: 'traML')"
    chrom_out: "Output file: Chromatograms (valid formats: 'mzML')"
    candidates_out: "Output file: Feature candidates (before filtering and model fitting) (valid formats: 'featureXML')"
    model: ":type <choice>               Type of elution model to fit to features (default: 'symmetric' valid: 'symmetric', 'asymmetric', 'none')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}