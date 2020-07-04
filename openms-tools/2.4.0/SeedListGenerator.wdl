version 1.0

task SeedListGenerator {
  input {
    File? in
    Boolean? out
    Boolean? use_peptide_mass
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    SeedListGenerator \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{true="-out" false="" out} \
      ~{true="-use_peptide_mass" false="" use_peptide_mass} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    in: "*         Input file (see below for details) (valid formats: 'mzML', 'idXML', 'featureXML', 'consensusXML')"
    out: "<file(s)>*     Output file(s) (valid formats: 'featureXML')"
    use_peptide_mass: "[idXML input only] Use the monoisotopic mass of the best peptide hit for the m/z position (default: use precursor m/z)"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}