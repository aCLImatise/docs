version 1.0

task OpenPepXL {
  input {
    File? in
    File? consensus
    File? database
    String? decoy_string
    Boolean? decoy_prefix
    Boolean? algorithm
    File? out_x_quest_xml
    File? out_x_quest_spec_xml
    File? out_idxml
    File? out_mz_ident_ml
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    OpenPepXL \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(consensus) then ("-consensus " +  '"' + consensus + '"') else ""} \
      ~{if defined(database) then ("-database " +  '"' + database + '"') else ""} \
      ~{if defined(decoy_string) then ("-decoy_string " +  '"' + decoy_string + '"') else ""} \
      ~{if (decoy_prefix) then "-decoy_prefix" else ""} \
      ~{if (algorithm) then "-algorithm" else ""} \
      ~{if defined(out_x_quest_xml) then ("-out_xquestxml " +  '"' + out_x_quest_xml + '"') else ""} \
      ~{if defined(out_x_quest_spec_xml) then ("-out_xquest_specxml " +  '"' + out_x_quest_spec_xml + '"') else ""} \
      ~{if defined(out_idxml) then ("-out_idXML " +  '"' + out_idxml + '"') else ""} \
      ~{if defined(out_mz_ident_ml) then ("-out_mzIdentML " +  '"' + out_mz_ident_ml + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*                                    Input file containing the spectra. (valid formats: 'mzML')"
    consensus: "*                             Input file containing the linked mass peaks. (valid formats: 'consensusXML')"
    database: "*                              Input file containing the protein database. (valid formats: 'fasta')"
    decoy_string: "String that was appended (or prefixed - see 'prefix' flag below) to the accessions in the protein database to indicate decoy proteins. (default: 'decoy')"
    decoy_prefix: "Set flag, if the decoy_string is a prefix of accessions in the protein database. Otherwise it is a suffix."
    algorithm: ":number_top_hits <num>               Number of top hits reported for each spectrum pair (default: '5')"
    out_x_quest_xml: "Results in the xquest.xml format (at least one of these output parameters should be set, otherwise you will not have any results). (valid formats: 'xml', 'xquest.xml')"
    out_x_quest_spec_xml: "Matched spectra in the xQuest .spec.xml format for spectra visualization in the xQuest results manager. (valid formats: 'xml', 'spec.xml')"
    out_idxml: "Results in idXML format (at least one of these output parameters should be set, otherwise you will not have any results) (valid formats: 'idXML')"
    out_mz_ident_ml: "Results in mzIdentML (.mzid) format (at least one of these output parameters should be set, otherwise you will not have any results) (valid formats: 'mzid')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
  }
}