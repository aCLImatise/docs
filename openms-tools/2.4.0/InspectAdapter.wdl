version 1.0

task InspectAdapter {
  input {
    File? in
    File? out
    Boolean? inspect_in
    Boolean? inspect_out
    String? inspect_directory
    String? temp_data_directory
    File? dbs
    File? trie_dbs
    File? new_db
    String? instrument
    String? precursor_mass_tolerance
    String? peak_mass_tolerance
    Boolean? list_modifications
    String? modifications
    Boolean? use_mono_isotopic_mod_mass
    File? modifications_xml_file
    String? cleavage
    File? inspect_output
    File? inspect_input
    Boolean? multi_charge
    String? max_modifications_pp
    String? tag_count
    Boolean? no_tmp_dbs
    String? p_value
    String? contact_name
    String? contact_institution
    String? contact_info
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    InspectAdapter \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="-inspect_in" false="" inspect_in} \
      ~{true="-inspect_out" false="" inspect_out} \
      ~{if defined(inspect_directory) then ("-inspect_directory " +  '"' + inspect_directory + '"') else ""} \
      ~{if defined(temp_data_directory) then ("-temp_data_directory " +  '"' + temp_data_directory + '"') else ""} \
      ~{if defined(dbs) then ("-dbs " +  '"' + dbs + '"') else ""} \
      ~{if defined(trie_dbs) then ("-trie_dbs " +  '"' + trie_dbs + '"') else ""} \
      ~{if defined(new_db) then ("-new_db " +  '"' + new_db + '"') else ""} \
      ~{if defined(instrument) then ("-instrument " +  '"' + instrument + '"') else ""} \
      ~{if defined(precursor_mass_tolerance) then ("-precursor_mass_tolerance " +  '"' + precursor_mass_tolerance + '"') else ""} \
      ~{if defined(peak_mass_tolerance) then ("-peak_mass_tolerance " +  '"' + peak_mass_tolerance + '"') else ""} \
      ~{true="-list_modifications" false="" list_modifications} \
      ~{if defined(modifications) then ("-modifications " +  '"' + modifications + '"') else ""} \
      ~{true="-use_monoisotopic_mod_mass" false="" use_mono_isotopic_mod_mass} \
      ~{if defined(modifications_xml_file) then ("-modifications_xml_file " +  '"' + modifications_xml_file + '"') else ""} \
      ~{if defined(cleavage) then ("-cleavage " +  '"' + cleavage + '"') else ""} \
      ~{if defined(inspect_output) then ("-inspect_output " +  '"' + inspect_output + '"') else ""} \
      ~{if defined(inspect_input) then ("-inspect_input " +  '"' + inspect_input + '"') else ""} \
      ~{true="-multicharge" false="" multi_charge} \
      ~{if defined(max_modifications_pp) then ("-max_modifications_pp " +  '"' + max_modifications_pp + '"') else ""} \
      ~{if defined(tag_count) then ("-tag_count " +  '"' + tag_count + '"') else ""} \
      ~{true="-no_tmp_dbs" false="" no_tmp_dbs} \
      ~{if defined(p_value) then ("-p_value " +  '"' + p_value + '"') else ""} \
      ~{if defined(contact_name) then ("-contact_name " +  '"' + contact_name + '"') else ""} \
      ~{if defined(contact_institution) then ("-contact_institution " +  '"' + contact_institution + '"') else ""} \
      ~{if defined(contact_info) then ("-contact_info " +  '"' + contact_info + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    in: "*                      Input file in mzXML or mzData format. Note: In mode 'inspect_out' an Inspect results file is read. (valid formats: 'mzXML', 'mzData')"
    out: "*                     Output file in idXML format. Note: In mode 'inspect_in' an Inspect input file is written. (valid formats: 'idXML')"
    inspect_in: "If this flag is set the InspectAdapter will read in mzXML, write an Inspect input file and generate a trie database"
    inspect_out: "If this flag is set the InspectAdapter will read in a Inspect results file and write idXML"
    inspect_directory: "The directory in which Inspect is located"
    temp_data_directory: "A directory in which some temporary files can be stored"
    dbs: "Name(s) of database(s) to search in (FASTA and SwissProt supported)"
    trie_dbs: "Name(s) of databases(s) to search in (trie-format)"
    new_db: "Name of the merged trie database"
    instrument: "The instrument that was used to measure the spectra (If set to QTOF, uses a QTOF-derived fragmentation model, and does not attempt to correct the parent mass.) (valid: 'ESI-ION-TRAP', 'QTOF', 'FT-Hybrid')"
    precursor_mass_tolerance: "The precursor mass tolerance (default: '2')"
    peak_mass_tolerance: "The peak mass tolerance (default: '1')"
    list_modifications: "Show a list of the available modifications"
    modifications: "The colon-separated modifications; may be <name>,<type>, e.g.: Deamidation,opt or <composition>,<residues>,<type>,<name>, e.g.: H2C2O,KCS,opt,Acetyl or <mass>,<residues>,<type>,<name>, e.g.: 42.0367,KCS,opt,Acetyl or Valid values for type are \"fix\" and \"opt\" (default) If you want terminal PTMs, write \"cterm\" or \"nterm\" instead of residues"
    use_mono_isotopic_mod_mass: "Use monoisotopic masses for the modifications"
    modifications_xml_file: "Name of an XML file with the modifications"
    cleavage: "The enzyme used for digestion (default: 'Trypsin')"
    inspect_output: "Name for the output file of Inspect (may only be used in a full run)"
    inspect_input: "Name for the input file of Inspect (may only be used in a full run)"
    multi_charge: "Attempt to guess the precursor charge and mass, and consider multiple charge states if feasible"
    max_modifications_pp: "Number of PTMs permitted in a single peptide. (default: '-1')"
    tag_count: "Number of tags to generate (default: '-1')"
    no_tmp_dbs: "No temporary databases are used"
    p_value: "Annotations with inferior p-value are ignored (default: '1')"
    contact_name: "Name of the contact (default: 'unknown')"
    contact_institution: "Name of the contact institution (default: 'unknown')"
    contact_info: "Some information about the contact (default: 'unknown')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}