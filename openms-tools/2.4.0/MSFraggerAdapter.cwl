#!/usr/bin/env cwl-runner

baseCommand:
- MSFraggerAdapter
class: CommandLineTool
cwlVersion: v1.0
id: msfraggeradapter
inputs:
- doc: The Java executable. Usually Java is on the system PATH. If Java is not found,
    use this parameter to specify the full path to Java
  id: java_executable
  inputBinding:
    prefix: -java_executable
  type: File
- doc: "Maximum Java heap size (in MB) (default: '3500')"
  id: java_heap_memory
  inputBinding:
    prefix: -java_heapmemory
  type: string
- doc: Path to the MSFragger executable to use; may be empty if the executable is
    globally available.
  id: executable
  inputBinding:
    prefix: -executable
  type: File
- doc: "*                                                              Input File\
    \ with specta for MSFragger (valid formats: 'mzML', 'mzXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                                                             MSFragger output\
    \ file (valid formats: 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "MSFragger optional output file (valid formats: 'pepXML')"
  id: opt_out
  inputBinding:
    prefix: -opt_out
  type: File
- doc: "*                                               Protein FASTA database file\
    \ path (valid formats: 'FASTA', 'fasta', 'fa', 'fas')"
  id: database
  inputBinding:
    prefix: -database
  type: File
- doc: ":precursor_mass_tolerance <precursor_mass_tolerance>           Precursor mass\
    \ tolerance (window is +/- this value) (default: '20' min: '0')"
  id: tolerance
  inputBinding:
    prefix: -tolerance
  type: boolean
- doc: ":precursor_mass_unit <precursor_mass_unit>                     Unit of precursor\
    \ mass tolerance (default: 'ppm' valid: 'Da', 'ppm')"
  id: tolerance
  inputBinding:
    prefix: -tolerance
  type: boolean
- doc: ":precursor_true_tolerance <precursor_true_tolerance>           True precursor\
    \ mass tolerance (window is +/- this value). Used for tie breaker of results (in\
    \ spectrally ambiguous cases) and zero bin  boosting in open searches (0 disables\
    \ these features). This option is STRONGLY recommended for open searches. (default:\
    \ '0' min: '0')"
  id: tolerance
  inputBinding:
    prefix: -tolerance
  type: boolean
- doc: ":precursor_true_unit <precursor_true_unit>                     Unit of precursor\
    \ true tolerance (default: 'ppm' valid: 'Da', 'ppm')"
  id: tolerance
  inputBinding:
    prefix: -tolerance
  type: boolean
- doc: ":fragment_mass_tolerance <fragment_mass_tolerance>             Fragment mass\
    \ tolerance (window is +/- this value) (default: '20' min: '0')"
  id: tolerance
  inputBinding:
    prefix: -tolerance
  type: boolean
- doc: ":fragment_mass_unit <fragment_mass_unit>                       Unit of fragment\
    \ mass tolerance (default: 'ppm' valid: 'Da', 'ppm')"
  id: tolerance
  inputBinding:
    prefix: -tolerance
  type: boolean
- doc: ":isotope_error <isotope_error>                                 Isotope correction\
    \ for MS/MS events triggered on isotopic peaks. Should be set to 0 (disabled)\
    \ for open search or 0/1/2 for correction  of narrow window searches. Shifts the\
    \ precursor mass window to multiples of this value multiplied by the mass of C13-C12.\
    \ (default: '0' valid: '0', '1', '2')"
  id: tolerance
  inputBinding:
    prefix: -tolerance
  type: boolean
- doc: ":search_enzyme_name <search_enzyme_name>                          Name of\
    \ the enzyme to be written to the pepXML file (default: 'Trypsin' valid: 'Asp-N',\
    \ 'leukocyte elastase', 'Alpha-lytic protease',  '2-iodobenzoate', 'Lys-N', 'no\
    \ cleavage', 'Asp-N_ambic', 'Lys-C', 'TrypChymo', 'V8-DE', 'V8-E', 'Formic_acid',\
    \ 'Trypsin/P', 'Lys-C/P', 'Chymotrypsin', 'Clostripain/P', 'Trypsin', 'Arg-C',\
    \ 'iodosobenzoate', 'Asp-N/B', 'Glu-C+P', 'unspecific cleavage', 'PepsinA', 'PepsinA\
    \ + P', 'glutamyl endopeptidase', 'proline-endopeptidase/HKR', 'staphylococcal\
    \ protease/D', 'CNBr', 'Chymotrypsin/P', 'elastase-trypsin- chymotrypsin', 'proline\
    \ endopeptidase', 'cyanogen-bromide', 'Arg-C/P')"
  id: digest
  inputBinding:
    prefix: -digest
  type: boolean
- doc: ":search_enzyme_cutafter <search_enzyme_cutafter>                  Residues\
    \ after which the enzyme cuts (specified as a string of amino acids) (default:\
    \ 'KR')"
  id: digest
  inputBinding:
    prefix: -digest
  type: boolean
- doc: ":search_enzyme_nocutbefore <search_enzyme_nocutbefore>            Residues\
    \ that the enzyme will not cut before (default: 'P')"
  id: digest
  inputBinding:
    prefix: -digest
  type: boolean
- doc: ":num_enzyme_termini <num_enzyme_termini>                          Number of\
    \ enzyme termini (non-enzymatic (0), semi (1), fully (2) (default: 'fully' valid:\
    \ 'non-enzymatic', 'semi', 'fully')"
  id: digest
  inputBinding:
    prefix: -digest
  type: boolean
- doc: ":allowed_missed_cleavage <allowed_missed_cleavage>                Allowed\
    \ number of missed cleavages (default: '2' valid: '0', '1', '2', '3', '4', '5')"
  id: digest
  inputBinding:
    prefix: -digest
  type: boolean
- doc: ":min_length <digest_min_length>                                   Minimum\
    \ length of peptides to be generated during in-silico digestion (default: '7'\
    \ min: '0')"
  id: digest
  inputBinding:
    prefix: -digest
  type: boolean
- doc: ":max_length <digest_max_length>                                   Maximum\
    \ length of peptides to be generated during in-silico digestion (default: '64'\
    \ min: '0')"
  id: digest
  inputBinding:
    prefix: -digest
  type: boolean
- doc: ":mass_range_min <digest_mass_range_min>                           Min mass\
    \ of peptides to be generated (Da) (default: '500' min: '0')"
  id: digest
  inputBinding:
    prefix: -digest
  type: boolean
- doc: ":mass_range_max <digest_mass_range_max>                           Max mass\
    \ of peptides to be generated (Da) (default: '5000' min: '0')"
  id: digest
  inputBinding:
    prefix: -digest
  type: boolean
- doc: :clip_nterm_m                                                     Specifies
    the trimming of a protein N-terminal methionine as a variable modification
  id: varmod
  inputBinding:
    prefix: -varmod
  type: boolean
- doc: :masses <varmod1_mass .. varmod7_mass>                            Masses for
    variable modifications
  id: varmod
  inputBinding:
    prefix: -varmod
  type: boolean
- doc: :syntaxes <varmod1_syntax .. varmod7_syntax>                      Syntax Strings
    for variable modifications
  id: varmod
  inputBinding:
    prefix: -varmod
  type: boolean
- doc: :enable_common                                                    Enable common
    variable modifications (15.9949 M and 42.0106 [^)
  id: varmod
  inputBinding:
    prefix: -varmod
  type: boolean
- doc: :not_allow_multiple_variable_mods_on_residue                      Do not allow
    any one amino acid to be modified by multiple variable modifications
  id: varmod
  inputBinding:
    prefix: -varmod
  type: boolean
- doc: ":max_variable_mods_per_mod <max_variable_mods_per_mod>            Maximum\
    \ number of residues that can be occupied by each variable modification (default:\
    \ '2' valid: '0', '1', '2', '3', '4', '5')"
  id: varmod
  inputBinding:
    prefix: -varmod
  type: boolean
- doc: ":max_variable_mods_combinations <max_variable_mods_combinations>  Maximum\
    \ allowed number of modified variably modified peptides from each peptide sequence,\
    \ (maximum of 65534). If a greater number than  the maximum is generated, only\
    \ the unmodified peptide is considered (default: '5000' min: '0' max: '65534')"
  id: varmod
  inputBinding:
    prefix: -varmod
  type: boolean
- doc: ":minimum_peaks <minimum_peaks>                                  Minimum number\
    \ of peaks in experimental spectrum for matching (default: '10' min: '0')"
  id: spectrum
  inputBinding:
    prefix: -spectrum
  type: boolean
- doc: ":use_topn_peaks <use_topN_peaks>                                Pre-process\
    \ experimental spectrum to only use top N peaks (default: '50' min: '0')"
  id: spectrum
  inputBinding:
    prefix: -spectrum
  type: boolean
- doc: ":minimum_ratio <minimum_ratio>                                  Filters out\
    \ all peaks in experimental spectrum less intense than this multiple of the base\
    \ peak intensity (default: '0' min: '0' max:  '1')"
  id: spectrum
  inputBinding:
    prefix: -spectrum
  type: boolean
- doc: ":clear_mz_range_min <clear_mz_range_min>                        Removes peaks\
    \ in this m/z range prior to matching (minimum value). Useful for iTRAQ/TMT experiments\
    \ (i.e. 0.0 150.0) (default: '0' min: '0')"
  id: spectrum
  inputBinding:
    prefix: -spectrum
  type: boolean
- doc: ":clear_mz_range_max <clear_mz_range_max>                        Removes peaks\
    \ in this m/z range prior to matching (maximum value). Useful for iTRAQ/TMT experiments\
    \ (i.e. 0.0 150.0) (default: '0' min: '0')"
  id: spectrum
  inputBinding:
    prefix: -spectrum
  type: boolean
- doc: ":max_fragment_charge <max_fragment_charge>                      Maximum charge\
    \ state for theoretical fragments to match (default: '2' valid: '1', '2', '3',\
    \ '4')"
  id: spectrum
  inputBinding:
    prefix: -spectrum
  type: boolean
- doc: ':override_charge                                                Ignores precursor
    charge and uses charge state specified in precursor_charge range (parameters:
    spectrum:precursor_charge_min and spect rum:precursor_charge_max)'
  id: spectrum
  inputBinding:
    prefix: -spectrum
  type: boolean
- doc: ":precursor_charge_min <precursor_charge_min>                    Min charge\
    \ of precursor charge range to consider. If specified, also spectrum:override_charge\
    \ must be set) (default: '1' min: '0')"
  id: spectrum
  inputBinding:
    prefix: -spectrum
  type: boolean
- doc: ":precursor_charge_max <precursor_charge_max>                    Max charge\
    \ of precursor charge range to consider. If specified, also spectrum:override_charge\
    \ must be set) (default: '4' min: '0')"
  id: spectrum
  inputBinding:
    prefix: -spectrum
  type: boolean
- doc: ":track_zero_topn <track_zero_topn>                                Track top\
    \ N unmodified peptide results separately from main results internally for boosting\
    \ features. Should be set to a number greater than search:output_report_topN if\
    \ zero bin boosting is desired (default: '0' min: '0')"
  id: search
  inputBinding:
    prefix: -search
  type: boolean
- doc: ":zero_bin_accept_expect <zero_bin_accept_expect>                  Ranks a\
    \ zero-bin hit above all non-zero-bin hit if it has expectation less than this\
    \ value (default: '0' min: '0')"
  id: search
  inputBinding:
    prefix: -search
  type: boolean
- doc: ":zero_bin_mult_expect <zero_bin_mult_expect>                      Multiplies\
    \ expect value of PSMs in the zero-bin during results ordering (set to less than\
    \ 1 for boosting) (default: '1' min: '0')"
  id: search
  inputBinding:
    prefix: -search
  type: boolean
- doc: ":add_topn_complementary <add_topn_complementary>                  Inserts\
    \ complementary ions corresponding to the top N most intense fragments in each\
    \ experimental spectrum. Useful for recovery of modi fied peptides near C-terminus\
    \ in open search. 0 disables this option (default: '0' min: '0')"
  id: search
  inputBinding:
    prefix: -search
  type: boolean
- doc: ":min_fragments_modeling <min_fragments_modeling>                  Minimum\
    \ number of matched peaks in PSM for inclusion in statistical modeling (default:\
    \ '3' min: '0')"
  id: search
  inputBinding:
    prefix: -search
  type: boolean
- doc: ":min_matched_fragments <min_matched_fragments>                    Minimum\
    \ number of matched peaks for PSM to be reported. MSFragger recommends a minimum\
    \ of 4 for narrow window searching and 6 for open  searches (default: '4' min:\
    \ '0')"
  id: search
  inputBinding:
    prefix: -search
  type: boolean
- doc: ":output_report_topn <output_report_topn>                          Reports\
    \ top N PSMs per input spectrum (default: '1' min: '0')"
  id: search
  inputBinding:
    prefix: -search
  type: boolean
- doc: ":output_max_expect <output_max_expect>                            Suppresses\
    \ reporting of PSM if top hit has expectation greater than this threshold (default:\
    \ '50' min: '0')"
  id: search
  inputBinding:
    prefix: -search
  type: boolean
- doc: ":add_cterm_peptide <add_cterm_peptide>                           Statically\
    \ add mass in Da to C-terminal of peptide (default: '0' min: '0')"
  id: stat_mod
  inputBinding:
    prefix: -statmod
  type: boolean
- doc: ":add_nterm_peptide <add_nterm_peptide>                           Statically\
    \ add mass in Da to N-terminal of peptide (default: '0' min: '0')"
  id: stat_mod
  inputBinding:
    prefix: -statmod
  type: boolean
- doc: ":add_cterm_protein <add_cterm_protein>                           Statically\
    \ add mass in Da to C-terminal of protein (default: '0' min: '0')"
  id: stat_mod
  inputBinding:
    prefix: -statmod
  type: boolean
- doc: ":add_nterm_protein <add_nterm_protein>                           Statically\
    \ add mass in Da to N-terminal of protein (default: '0' min: '0')"
  id: stat_mod
  inputBinding:
    prefix: -statmod
  type: boolean
- doc: Use the given TOPP INI file
  id: ini
  inputBinding:
    prefix: -ini
  type: File
- doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: Writes the default configuration file
  id: write_ini
  inputBinding:
    prefix: -write_ini
  type: File
- doc: Shows all options (including advanced)
  id: helphelp
  inputBinding:
    prefix: --helphelp
  type: boolean
