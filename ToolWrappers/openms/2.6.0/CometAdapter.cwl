class: CommandLineTool
id: CometAdapter.cwl
inputs:
- id: in_in
  doc: "*                            Input file (valid formats: 'mzML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*                           Output file (valid formats: 'idXML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_database
  doc: "*                      FASTA file (valid formats: 'FASTA')"
  type: File?
  inputBinding:
    prefix: -database
- id: in_comet_executable
  doc: '*        The Comet executable. Provide a full or relative path, or make sure
    it can be found in your PATH environment.'
  type: File?
  inputBinding:
    prefix: -comet_executable
- id: in_pin_out
  doc: "Output file - for Percolator input (valid formats: 'tsv')"
  type: File?
  inputBinding:
    prefix: -pin_out
- id: in_default_params_file
  doc: "Default Comet params file. All parameters of this take precedence. A template\
    \ file can be generated using 'comet.exe -p' (valid formats: 'txt')"
  type: File?
  inputBinding:
    prefix: -default_params_file
- id: in_precursor_mass_tolerance
  doc: "Precursor monoisotopic mass tolerance (Comet parameter: peptide_mass_tolerance).\
    \  See also precursor_error_units to set the unit. (default: '10.0')"
  type: double?
  inputBinding:
    prefix: -precursor_mass_tolerance
- id: in_precursor_error_units
  doc: "Unit of precursor monoisotopic mass tolerance for parameter precursor_mass_tolerance\
    \ (Comet parameter: peptide_mass_units) (default: 'ppm' valid: 'amu', 'ppm', 'Da')"
  type: string?
  inputBinding:
    prefix: -precursor_error_units
- id: in_isotope_error
  doc: "This parameter controls whether the peptide_mass_tolerance takes into account\
    \ possible isotope errors in the precursor mass measurement. Use -8/-4/0/4/8 only\
    \ for SILAC. (default: 'off' valid: 'off', '0/1', '0/1/2', '0/1/2/3', '-8/-4/0/4/8')"
  type: long?
  inputBinding:
    prefix: -isotope_error
- id: in_fragment_mass_tolerance
  doc: "This is half the bin size, which is used to segment the MS/MS spectrum. Thus,\
    \ the value should be a bit higher than for other search engines, since the bin\
    \ might not be centered around the peak apex (see 'fragment_bin_offset').CAUTION:\
    \ Low tolerances have heavy impact on RAM usage (since Comet uses a lot of bins\
    \ in this case). Consider using use_sparse_matrix and/or spectrum_batch_size.\
    \ (default: '0.01' min: '1.0e-04')"
  type: long?
  inputBinding:
    prefix: -fragment_mass_tolerance
- id: in_fragment_error_units
  doc: "Fragment monoisotopic mass error units (default: 'Da' valid: 'Da')"
  type: string?
  inputBinding:
    prefix: -fragment_error_units
- id: in_fragment_bin_offset
  doc: "Offset of fragment bins. Recommended by Comet: low-res: 0.4, high-res: 0.0\
    \ (default: '0.0' min: '0.0' max: '1.0')"
  type: long?
  inputBinding:
    prefix: -fragment_bin_offset
- id: in_instrument
  doc: "Comets theoretical_fragment_ions parameter: theoretical fragment ion peak\
    \ representation, high-res: sum of intensities plus flanking bins, ion trap (low-res)\
    \ ms/ms: sum of intensities of central M bin only (default: 'high_res' valid:\
    \ 'low_res', 'high_res')"
  type: string?
  inputBinding:
    prefix: -instrument
- id: in_enzyme
  doc: "The enzyme used for peptide digestion. (default: 'Trypsin' valid: 'unspecific\
    \ cleavage', 'glutamyl endopeptidase', 'Arg-C', 'Chymotrypsin', 'CNBr', 'Lys-N',\
    \ 'Asp-N', 'Trypsin/P', 'PepsinA', 'Trypsin', 'Lys-C')"
  type: string?
  inputBinding:
    prefix: -enzyme
- id: in_num_enzyme_termini
  doc: "Specify the termini where the cleavage rule has to match (default: 'fully'\
    \ valid: 'semi', 'fully', 'C-term unspecific', 'N-term unspecific')"
  type: string?
  inputBinding:
    prefix: -num_enzyme_termini
- id: in_missed_cleavages
  doc: "Number of possible cleavage sites missed by the enzyme. It has no effect if\
    \ enzyme is unspecific cleavage. (default: '1' min: '0' max: '5')"
  type: long?
  inputBinding:
    prefix: -missed_cleavages
- id: in_min_peptide_length
  doc: "Minimum peptide length to consider. (default: '5' min: '5' max: '63')"
  type: long?
  inputBinding:
    prefix: -min_peptide_length
- id: in_max_peptide_length
  doc: "Maximum peptide length to consider. (default: '63' min: '5' max: '63')"
  type: long?
  inputBinding:
    prefix: -max_peptide_length
- id: in_num_hits
  doc: "Number of peptide hits in output file (default: '1')"
  type: long?
  inputBinding:
    prefix: -num_hits
- id: in_precursor_charge
  doc: "[min]:[max]          Precursor charge range to search (if spectrum is not\
    \ annotated with a charge or if override_charge!=keep any known): 0:[num] == search\
    \ all charges, 2:6 == from +2 to +6, 3:3 == +3 (default: '0:0')"
  type: boolean?
  inputBinding:
    prefix: -precursor_charge
- id: in_override_charge
  doc: "_keep any known_: keep any precursor charge state (from input), _ignore known_:\
    \ ignore known precursor charge state and use precursor_charge parameter, _ignore\
    \ outside range_: ignore precursor charges outside precursor_charge range, _keep\
    \ known search unknown_: keep any known precursor charge state. For unknown charge\
    \ states, search as singly charged if there is no signal above the precursor m/z\
    \ or use the precursor_charge range (default: 'keep known search unknown' valid:\
    \ 'keep any known', 'ignore known', 'ignore outside range', 'keep known search\
    \ unknown')"
  type: string?
  inputBinding:
    prefix: -override_charge
- id: in_ms_level
  doc: "MS level to analyze, valid are levels 2 (default) or 3 (default: '2' min:\
    \ '2' max: '3')"
  type: long?
  inputBinding:
    prefix: -ms_level
- id: in_activation_method
  doc: "If not ALL, only searches spectra of the given method (default: 'ALL' valid:\
    \ 'ALL', 'CID', 'ECD', 'ETD', 'PQD', 'HCD', 'IRMPD')"
  type: string?
  inputBinding:
    prefix: -activation_method
- id: in_max_fragment_charge
  doc: "Set maximum fragment charge state to analyze as long as still lower than precursor\
    \ charge - 1. (Allowed max 5) (default: '3' min: '1' max: '5')"
  type: long?
  inputBinding:
    prefix: -max_fragment_charge
- id: in_clip_n_term_methionine
  doc: "If set to true, also considers the peptide sequence w/o N-term methionine\
    \ separately and applies appropriate N-term mods to it (default: 'false' valid:\
    \ 'true', 'false')"
  type: boolean?
  inputBinding:
    prefix: -clip_nterm_methionine
- id: in_fixed_modifications
  doc: "Fixed modifications, specified using Unimod (www.unimod.org) terms, e.g. 'Carbamidomethyl\
    \ (C)' or 'Oxidation (M)' (default: '[Carbamidomethyl (C)]' valid: '15N-oxobutanoic\
    \ (N-term C)', '15N-oxobutanoic (Protein N-term S)', '15N-oxobutanoic (Protein\
    \ N-term T)', '2-dimethylsuccinyl (C)', '2-monomethylsuccinyl (C)', '2-nitrobenzyl\
    \ (Y)', '2-succinyl (C)', '2HPG (R)', '3-deoxyglucosone (R)', '3-phosphoglyceryl\
    \ (K)', '3sulfo (N-term)', '4-ONE (C)', '4-ONE (H)', '4-ONE (K)', '4-ONE+Delta:H(-2)O(-1)\
    \ (C)', '4-ONE+Delta:H(-2)O(-1) (H)', '4-ONE+Delta:H(-2)O(-1) (K)', '4AcAllylGal\
    \ (C)', 'a-type-ion (C-term)', 'AccQTag (K)', 'AccQTag (N-term)', 'Acetyl (C)',\
    \ 'Acetyl (H)', 'Acetyl (K)', 'Acetyl (N-term)', 'Acetyl (Protein N-term)', 'Acetyl\
    \ (R)', 'Acetyl (S)', 'Acetyl (T)', 'Acetyl (Y)', 'Acetyl:13C(2) (K)', 'Acetyl:13C(2)\
    \ (Protein N-term)', 'Acetyl:2H(3) (H)', 'Acetyl:2H(3) (K)', 'Acetyl:2H(3) (N-term)',\
    \ 'Acetyl:2H(3) (Protein N-term)', 'Acetyl:2H(3) (S)', 'Acetyl:2H(3) (T)', 'Acetyl:2H(3)\
    \ (Y)', 'Acetyldeoxyhypusine (K)', 'Acetylhypusine (K)', 'ADP-Ribosyl (C)', 'ADP-Ribosyl\
    \ (D)', 'ADP-Ribosyl (E)', 'ADP-Ribosyl (K)', 'ADP-Ribosyl (N)', 'ADP-Ribosyl\
    \ (R)', 'ADP-Ribosyl (S)', 'ADP-Ribosyl (T)', 'AEBS (H)', 'AEBS (K)', 'AEBS (Protein\
    \ N-term)', 'AEBS (S)', 'AEBS (Y)', 'AEC-MAEC (S)', 'AEC-MAEC (T)', 'AEC-MAEC:2H(4)\
    \ (S)', 'AEC-MAEC:2H(4) (T)', 'AFB1_Dialdehyde (K)', 'AHA-Alkyne (M)', 'AHA-Alkyne-KDDDD\
    \ (M)', 'AHA-SS (M)', 'AHA-SS_CAM (M)', 'Ahx2+Hsl (C-term)', 'Ala->Arg (A)', 'Ala->Asn\
    \ (A)', 'Ala->Asp (A)', 'Ala->Cys (A)', 'Ala->Gln (A)', 'Ala->Glu (A)', 'Ala->Gly\
    \ (A)', 'Ala->His (A)', 'Ala->Lys (A)', 'Ala->Met (A)', 'Ala->Phe (A)', 'Ala->Pro\
    \ (A)', 'Ala->Ser (A)', 'Ala->Thr (A)', 'Ala->Trp (A)', 'Ala->Tyr (A)', 'Ala->Val\
    \ (A)', 'Ala->Xle (A)', 'Amidated (C-term)', 'Amidated (Protein C-term)', 'Amidine\
    \ (K)', 'Amidine (N-term)', 'Amidino (C)', 'Amino (Y)', 'Ammonia-loss (N)', 'Ammonia-loss\
    \ (N-term C)', 'Ammonia-loss (Protein N-term S)', 'Ammonia-loss (Protein N-term\
    \ T)', 'Ammonium (C-term)', 'Ammonium (D)', 'Ammonium (E)', 'AMTzHexNAc2 (N)',\
    \ 'AMTzHexNAc2 (S)', 'AMTzHexNAc2 (T)', 'Archaeol (C)', 'Arg (N-term)', 'Arg->Ala\
    \ (R)', 'Arg->Asn (R)', 'Arg->Asp (R)', 'Arg->Cys (R)', 'Arg->Gln (R)', 'Arg->Glu\
    \ (R)', 'Arg->GluSA (R)', 'Arg->Gly (R)', 'Arg->His (R)', 'Arg->Lys (R)', 'Arg->Met\
    \ (R)', 'Arg->Npo (R)', 'Arg->Orn (R)', 'Arg->Phe (R)', 'Arg->Pro (R)', 'Arg->Ser\
    \ (R)', 'Arg->Thr (R)', 'Arg->Trp (R)', 'Arg->Tyr (R)', 'Arg->Val (R)', 'Arg->Xle\
    \ (R)', 'Arg-loss (C-term R)', 'Arg2PG (R)', 'Argbiotinhydrazide (R)', 'AROD (C)',\
    \ 'Asn->Ala (N)', 'Asn->Arg (N)', 'Asn->Asp (N)', 'Asn->Cys (N)', 'Asn->Gln (N)',\
    \ 'Asn->Glu (N)', 'Asn->Gly (N)', 'Asn->His (N)', 'Asn->Lys (N)', 'Asn->Met (N)',\
    \ 'Asn->Phe (N)', 'Asn->Pro (N)', 'Asn->Ser (N)', 'Asn->Thr (N)', 'Asn->Trp (N)',\
    \ 'Asn->Tyr (N)', 'Asn->Val (N)', 'Asn->Xle (N)', 'Asp->Ala (D)', 'Asp->Arg (D)',\
    \ 'Asp->Asn (D)', 'Asp->Cys (D)', 'Asp->Gln (D)', 'Asp->Glu (D)', 'Asp->Gly (D)',\
    \ 'Asp->His (D)', 'Asp->Lys (D)', 'Asp->Met (D)', 'Asp->Phe (D)', 'Asp->Pro (D)',\
    \ 'Asp->Ser (D)', 'Asp->Thr (D)', 'Asp->Trp (D)', 'Asp->Tyr (D)', 'Asp->Val (D)',\
    \ 'Asp->Xle (D)', 'Aspartylurea (H)', 'Atto495Maleimide (C)', 'AzidoF (F)', 'azole\
    \ (C)', 'azole (S)', 'Bacillosamine (N)', 'BADGE (C)', 'BDMAPP (H)', 'BDMAPP (K)',\
    \ 'BDMAPP (Protein N-term)', 'BDMAPP (W)', 'BDMAPP (Y)', 'BEMAD_C (C)', 'BEMAD_C:2H(6)\
    \ (C)', 'BEMAD_ST (S)', 'BEMAD_ST (T)', 'BEMAD_ST:2H(6) (S)', 'BEMAD_ST:2H(6)\
    \ (T)', 'Benzoyl (K)', 'Benzoyl (N-term)', 'benzylguanidine (K)', 'betaFNA (C)',\
    \ 'betaFNA (K)', 'BHT (C)', 'BHT (H)', 'BHT (K)', 'BHTOH (C)', 'BHTOH (H)', 'BHTOH\
    \ (K)', 'Biotin (K)', 'Biotin (N-term)', 'Biotin-HPDP (C)', 'Biotin-PEG-PRA (M)',\
    \ 'Biotin-PEO-Amine (D)', 'Biotin-PEO-Amine (E)', 'Biotin-PEO-Amine (Protein C-term)',\
    \ 'Biotin-phenacyl (C)', 'Biotin-phenacyl (H)', 'Biotin-phenacyl (S)', 'Biotin-tyramide\
    \ (Y)', 'Biotin:Cayman-10013 (C)', 'Biotin:Cayman-10141 (C)', 'Biotin:Invitrogen-M1602\
    \ (C)', 'Biotin:Sigma-B1267 (C)', 'Biotin:Thermo-21325 (K)', 'Biotin:Thermo-21328\
    \ (K)', 'Biotin:Thermo-21328 (N-term)', 'Biotin:Thermo-21330 (K)', 'Biotin:Thermo-21330\
    \ (N-term)', 'Biotin:Thermo-21345 (Q)', 'Biotin:Thermo-21360 (X)', 'Biotin:Thermo-21901+2H2O\
    \ (C)', 'Biotin:Thermo-21901+H2O (C)', 'Biotin:Thermo-21911 (C)', 'Biotin:Thermo-33033\
    \ (X)', 'Biotin:Thermo-33033-H (X)', 'Biotin:Thermo-88310 (K)', 'Biotin:Thermo-88317\
    \ (S)', 'Biotin:Thermo-88317 (Y)', 'biotinAcrolein298 (C)', 'biotinAcrolein298\
    \ (H)', 'biotinAcrolein298 (K)', 'biotinAcrolein298 (Protein N-term)', 'BisANS\
    \ (K)', 'bisANS-sulfonates (K)', 'bisANS-sulfonates (S)', 'bisANS-sulfonates (T)',\
    \ 'BITC (C)', 'BITC (K)', 'BITC (N-term)', 'BMP-piperidinol (C)', 'BMP-piperidinol\
    \ (M)', 'Bodipy (C)', 'Brij35 (N-term)', 'Brij58 (N-term)', 'Bromo (F)', 'Bromo\
    \ (H)', 'Bromo (W)', 'Bromo (Y)', 'Bromobimane (C)', 'Butyryl (K)', 'C8-QAT (K)',\
    \ 'C8-QAT (N-term)', 'CAF (N-term)', 'CAMthiopropanoyl (K)', 'CAMthiopropanoyl\
    \ (Protein N-term)', 'Can-FP-biotin (S)', 'Can-FP-biotin (T)', 'Can-FP-biotin\
    \ (Y)', 'Carbamidomethyl (C)', 'Carbamidomethyl (D)', 'Carbamidomethyl (E)', 'Carbamidomethyl\
    \ (H)', 'Carbamidomethyl (K)', 'Carbamidomethyl (M)', 'Carbamidomethyl (N-term)',\
    \ 'Carbamidomethyl (S)', 'Carbamidomethyl (T)', 'Carbamidomethyl (U)', 'Carbamidomethyl\
    \ (Y)', 'CarbamidomethylDTT (C)', 'Carbamyl (C)', 'Carbamyl (K)', 'Carbamyl (M)',\
    \ 'Carbamyl (N-term)', 'Carbamyl (Protein N-term)', 'Carbamyl (R)', 'Carbamyl\
    \ (S)', 'Carbamyl (T)', 'Carbamyl (Y)', 'Carbofuran (S)', 'Carbonyl (A)', 'Carbonyl\
    \ (E)', 'Carbonyl (I)', 'Carbonyl (L)', 'Carbonyl (Q)', 'Carbonyl (R)', 'Carbonyl\
    \ (S)', 'Carbonyl (V)', 'Carboxy (D)', 'Carboxy (E)', 'Carboxy (K)', 'Carboxy\
    \ (Protein N-term M)', 'Carboxy (W)', 'Carboxy->Thiocarboxy (Protein C-term G)',\
    \ 'Carboxyethyl (H)', 'Carboxyethyl (K)', 'Carboxyethylpyrrole (K)', 'Carboxymethyl\
    \ (C)', 'Carboxymethyl (K)', 'Carboxymethyl (N-term)', 'Carboxymethyl (U)', 'Carboxymethyl\
    \ (W)', 'Carboxymethyl:13C(2) (C)', 'CarboxymethylDMAP (N-term)', 'CarboxymethylDTT\
    \ (C)', 'Cation:Ag (C-term)', 'Cation:Ag (D)', 'Cation:Ag (E)', 'Cation:Al[III]\
    \ (C-term)', 'Cation:Al[III] (D)', 'Cation:Al[III] (E)', 'Cation:Ca[II] (C-term)',\
    \ 'Cation:Ca[II] (D)', 'Cation:Ca[II] (E)', 'Cation:Cu[I] (C-term)', 'Cation:Cu[I]\
    \ (D)', 'Cation:Cu[I] (E)', 'Cation:Cu[I] (H)', 'Cation:Fe[II] (C-term)', 'Cation:Fe[II]\
    \ (D)', 'Cation:Fe[II] (E)', 'Cation:Fe[III] (C-term)', 'Cation:Fe[III] (D)',\
    \ 'Cation:Fe[III] (E)', 'Cation:K (C-term)', 'Cation:K (D)', 'Cation:K (E)', 'Cation:Li\
    \ (C-term)', 'Cation:Li (D)', 'Cation:Li (E)', 'Cation:Mg[II] (C-term)', 'Cation:Mg[II]\
    \ (D)', 'Cation:Mg[II] (E)', 'Cation:Na (C-term)', 'Cation:Na (D)', 'Cation:Na\
    \ (E)', 'Cation:Ni[II] (C-term)', 'Cation:Ni[II] (D)', 'Cation:Ni[II] (E)', 'Cation:Zn[II]\
    \ (C-term)', 'Cation:Zn[II] (D)', 'Cation:Zn[II] (E)', 'Cation:Zn[II] (H)', 'cGMP\
    \ (C)', 'cGMP (S)', 'cGMP+RMP-loss (C)', 'cGMP+RMP-loss (S)', 'CHDH (D)', 'Chlorination\
    \ (W)', 'Chlorination (Y)', 'Cholesterol (Protein C-term)', 'CIGG (K)', 'CLIP_TRAQ_2\
    \ (K)', 'CLIP_TRAQ_2 (N-term)', 'CLIP_TRAQ_2 (Y)', 'CLIP_TRAQ_3 (K)', 'CLIP_TRAQ_3\
    \ (N-term)', 'CLIP_TRAQ_3 (Y)', 'CLIP_TRAQ_4 (K)', 'CLIP_TRAQ_4 (N-term)', 'CLIP_TRAQ_4\
    \ (Y)', 'CoenzymeA (C)', 'Cresylphosphate (H)', 'Cresylphosphate (K)', 'Cresylphosphate\
    \ (R)', 'Cresylphosphate (S)', 'Cresylphosphate (T)', 'Cresylphosphate (Y)', 'CresylSaligeninPhosphate\
    \ (H)', 'CresylSaligeninPhosphate (K)', 'CresylSaligeninPhosphate (R)', 'CresylSaligeninPhosphate\
    \ (S)', 'CresylSaligeninPhosphate (T)', 'CresylSaligeninPhosphate (Y)', 'Crotonaldehyde\
    \ (C)', 'Crotonaldehyde (H)', 'Crotonaldehyde (K)', 'Crotonyl (K)', 'CuSMo (C)',\
    \ 'CUSTOM0 (A)', 'CUSTOM0 (C)', 'CUSTOM0 (C-term)', 'CUSTOM0 (D)', 'CUSTOM0 (E)',\
    \ 'CUSTOM0 (F)', 'CUSTOM0 (G)', 'CUSTOM0 (H)', 'CUSTOM0 (I)', 'CUSTOM0 (K)', 'CUSTOM0\
    \ (L)', 'CUSTOM0 (M)', 'CUSTOM0 (N)', 'CUSTOM0 (N-term)', 'CUSTOM0 (P)', 'CUSTOM0\
    \ (Q)', 'CUSTOM0 (R)', 'CUSTOM0 (S)', 'CUSTOM0 (T)', 'CUSTOM0 (V)', 'CUSTOM0 (W)',\
    \ 'CUSTOM0 (Y)', 'CUSTOM1 (A)', 'CUSTOM1 (C)', 'CUSTOM1 (C-term)', 'CUSTOM1 (D)',\
    \ 'CUSTOM1 (E)', 'CUSTOM1 (F)', 'CUSTOM1 (G)', 'CUSTOM1 (H)', 'CUSTOM1 (I)', 'CUSTOM1\
    \ (K)', 'CUSTOM1 (L)', 'CUSTOM1 (M)', 'CUSTOM1 (N)', 'CUSTOM1 (N-term)', 'CUSTOM1\
    \ (P)', 'CUSTOM1 (Q)', 'CUSTOM1 (R)', 'CUSTOM1 (S)', 'CUSTOM1 (T)', 'CUSTOM1 (V)',\
    \ 'CUSTOM1 (W)', 'CUSTOM1 (Y)', 'CUSTOM2 (A)', 'CUSTOM2 (C)', 'CUSTOM2 (C-term)',\
    \ 'CUSTOM2 (D)', 'CUSTOM2 (E)', 'CUSTOM2 (F)', 'CUSTOM2 (G)', 'CUSTOM2 (H)', 'CUSTOM2\
    \ (I)', 'CUSTOM2 (K)', 'CUSTOM2 (L)', 'CUSTOM2 (M)', 'CUSTOM2 (N)', 'CUSTOM2 (N-term)',\
    \ 'CUSTOM2 (P)', 'CUSTOM2 (Q)', 'CUSTOM2 (R)', 'CUSTOM2 (S)', 'CUSTOM2 (T)', 'CUSTOM2\
    \ (V)', 'CUSTOM2 (W)', 'CUSTOM2 (Y)', 'CUSTOM3 (A)', 'CUSTOM3 (C)', 'CUSTOM3 (C-term)',\
    \ 'CUSTOM3 (D)', 'CUSTOM3 (E)', 'CUSTOM3 (F)', 'CUSTOM3 (G)', 'CUSTOM3 (H)', 'CUSTOM3\
    \ (I)', 'CUSTOM3 (K)', 'CUSTOM3 (L)', 'CUSTOM3 (M)', 'CUSTOM3 (N)', 'CUSTOM3 (N-term)',\
    \ 'CUSTOM3 (P)', 'CUSTOM3 (Q)', 'CUSTOM3 (R)', 'CUSTOM3 (S)', 'CUSTOM3 (T)', 'CUSTOM3\
    \ (V)', 'CUSTOM3 (W)', 'CUSTOM3 (Y)', 'CUSTOM4 (A)', 'CUSTOM4 (C)', 'CUSTOM4 (C-term)',\
    \ 'CUSTOM4 (D)', 'CUSTOM4 (E)', 'CUSTOM4 (F)', 'CUSTOM4 (G)', 'CUSTOM4 (H)', 'CUSTOM4\
    \ (I)', 'CUSTOM4 (K)', 'CUSTOM4 (L)', 'CUSTOM4 (M)', 'CUSTOM4 (N)', 'CUSTOM4 (N-term)',\
    \ 'CUSTOM4 (P)', 'CUSTOM4 (Q)', 'CUSTOM4 (R)', 'CUSTOM4 (S)', 'CUSTOM4 (T)', 'CUSTOM4\
    \ (V)', 'CUSTOM4 (W)', 'CUSTOM4 (Y)', 'CUSTOM5 (A)', 'CUSTOM5 (C)', 'CUSTOM5 (C-term)',\
    \ 'CUSTOM5 (D)', 'CUSTOM5 (E)', 'CUSTOM5 (F)', 'CUSTOM5 (G)', 'CUSTOM5 (H)', 'CUSTOM5\
    \ (I)', 'CUSTOM5 (K)', 'CUSTOM5 (L)', 'CUSTOM5 (M)', 'CUSTOM5 (N)', 'CUSTOM5 (N-term)',\
    \ 'CUSTOM5 (P)', 'CUSTOM5 (Q)', 'CUSTOM5 (R)', 'CUSTOM5 (S)', 'CUSTOM5 (T)', 'CUSTOM5\
    \ (V)', 'CUSTOM5 (W)', 'CUSTOM5 (Y)', 'CUSTOM6 (A)', 'CUSTOM6 (C)', 'CUSTOM6 (C-term)',\
    \ 'CUSTOM6 (D)', 'CUSTOM6 (E)', 'CUSTOM6 (F)', 'CUSTOM6 (G)', 'CUSTOM6 (H)', 'CUSTOM6\
    \ (I)', 'CUSTOM6 (K)', 'CUSTOM6 (L)', 'CUSTOM6 (M)', 'CUSTOM6 (N)', 'CUSTOM6 (N-term)',\
    \ 'CUSTOM6 (P)', 'CUSTOM6 (Q)', 'CUSTOM6 (R)', 'CUSTOM6 (S)', 'CUSTOM6 (T)', 'CUSTOM6\
    \ (V)', 'CUSTOM6 (W)', 'CUSTOM6 (Y)', 'CUSTOM7 (A)', 'CUSTOM7 (C)', 'CUSTOM7 (C-term)',\
    \ 'CUSTOM7 (D)', 'CUSTOM7 (E)', 'CUSTOM7 (F)', 'CUSTOM7 (G)', 'CUSTOM7 (H)', 'CUSTOM7\
    \ (I)', 'CUSTOM7 (K)', 'CUSTOM7 (L)', 'CUSTOM7 (M)', 'CUSTOM7 (N)', 'CUSTOM7 (N-term)',\
    \ 'CUSTOM7 (P)', 'CUSTOM7 (Q)', 'CUSTOM7 (R)', 'CUSTOM7 (S)', 'CUSTOM7 (T)', 'CUSTOM7\
    \ (V)', 'CUSTOM7 (W)', 'CUSTOM7 (Y)', 'CUSTOM8 (A)', 'CUSTOM8 (C)', 'CUSTOM8 (C-term)',\
    \ 'CUSTOM8 (D)', 'CUSTOM8 (E)', 'CUSTOM8 (F)', 'CUSTOM8 (G)', 'CUSTOM8 (H)', 'CUSTOM8\
    \ (I)', 'CUSTOM8 (K)', 'CUSTOM8 (L)', 'CUSTOM8 (M)', 'CUSTOM8 (N)', 'CUSTOM8 (N-term)',\
    \ 'CUSTOM8 (P)', 'CUSTOM8 (Q)', 'CUSTOM8 (R)', 'CUSTOM8 (S)', 'CUSTOM8 (T)', 'CUSTOM8\
    \ (V)', 'CUSTOM8 (W)', 'CUSTOM8 (Y)', 'CUSTOM9 (A)', 'CUSTOM9 (C)', 'CUSTOM9 (C-term)',\
    \ 'CUSTOM9 (D)', 'CUSTOM9 (E)', 'CUSTOM9 (F)', 'CUSTOM9 (G)', 'CUSTOM9 (H)', 'CUSTOM9\
    \ (I)', 'CUSTOM9 (K)', 'CUSTOM9 (L)', 'CUSTOM9 (M)', 'CUSTOM9 (N)', 'CUSTOM9 (N-term)',\
    \ 'CUSTOM9 (P)', 'CUSTOM9 (Q)', 'CUSTOM9 (R)', 'CUSTOM9 (S)', 'CUSTOM9 (T)', 'CUSTOM9\
    \ (V)', 'CUSTOM9 (W)', 'CUSTOM9 (Y)', 'Cy3-maleimide (C)', 'Cy3b-maleimide (C)',\
    \ 'Cyano (C)', 'CyDye-Cy3 (C)', 'CyDye-Cy5 (C)', 'Cys->Ala (C)', 'Cys->Arg (C)',\
    \ 'Cys->Asn (C)', 'Cys->Asp (C)', 'Cys->CamSec (C)', 'Cys->Dha (C)', 'Cys->ethylaminoAla\
    \ (C)', 'Cys->Gln (C)', 'Cys->Glu (C)', 'Cys->Gly (C)', 'Cys->His (C)', 'Cys->Lys\
    \ (C)', 'Cys->Met (C)', 'Cys->methylaminoAla (C)', 'Cys->Oxoalanine (C)', 'Cys->Phe\
    \ (C)', 'Cys->Pro (C)', 'Cys->PyruvicAcid (Protein N-term C)', 'Cys->SecNEM (C)',\
    \ 'Cys->SecNEM:2H(5) (C)', 'Cys->Ser (C)', 'Cys->Thr (C)', 'Cys->Trp (C)', 'Cys->Tyr\
    \ (C)', 'Cys->Val (C)', 'Cys->Xle (C)', 'Cysteinyl (C)', 'cysTMT (C)', 'cysTMT6plex\
    \ (C)', 'Cytopiloyne (C)', 'Cytopiloyne (K)', 'Cytopiloyne (N-term)', 'Cytopiloyne\
    \ (P)', 'Cytopiloyne (R)', 'Cytopiloyne (S)', 'Cytopiloyne (Y)', 'Cytopiloyne+water\
    \ (C)', 'Cytopiloyne+water (K)', 'Cytopiloyne+water (N-term)', 'Cytopiloyne+water\
    \ (R)', 'Cytopiloyne+water (S)', 'Cytopiloyne+water (T)', 'Cytopiloyne+water (Y)',\
    \ 'DAET (S)', 'DAET (T)', 'Dansyl (K)', 'Dansyl (N-term)', 'Dap-DSP (A)', 'Dap-DSP\
    \ (E)', 'Dap-DSP (K)', 'Deamidated (N)', 'Deamidated (Protein N-term F)', 'Deamidated\
    \ (Q)', 'Deamidated (R)', 'Deamidated:18O(1) (N)', 'Deamidated:18O(1) (Q)', 'Decanoyl\
    \ (S)', 'Decanoyl (T)', 'Decarboxylation (D)', 'Decarboxylation (E)', 'DEDGFLYMVYASQETFG\
    \ (K)', 'Dehydrated (D)', 'Dehydrated (N-term C)', 'Dehydrated (Protein C-term\
    \ N)', 'Dehydrated (Protein C-term Q)', 'Dehydrated (S)', 'Dehydrated (T)', 'Dehydrated\
    \ (Y)', 'Dehydro (C)', 'Delta:H(-4)O(2) (W)', 'Delta:H(-4)O(3) (W)', 'Delta:H(1)N(-1)18O(1)\
    \ (N)', 'Delta:H(10)C(8)O(1) (K)', 'Delta:H(2)C(2) (H)', 'Delta:H(2)C(2) (K)',\
    \ 'Delta:H(2)C(2) (N-term)', 'Delta:H(2)C(2) (Protein N-term)', 'Delta:H(2)C(3)\
    \ (K)', 'Delta:H(2)C(3)O(1) (K)', 'Delta:H(2)C(3)O(1) (R)', 'Delta:H(2)C(5) (K)',\
    \ 'Delta:H(3)C(3)O(2) (K)', 'Delta:H(4)C(2) (H)', 'Delta:H(4)C(2) (K)', 'Delta:H(4)C(2)\
    \ (N-term)', 'Delta:H(4)C(2)O(-1)S(1) (S)', 'Delta:H(4)C(3) (H)', 'Delta:H(4)C(3)\
    \ (K)', 'Delta:H(4)C(3) (Protein N-term)', 'Delta:H(4)C(3)O(1) (C)', 'Delta:H(4)C(3)O(1)\
    \ (H)', 'Delta:H(4)C(3)O(1) (K)', 'Delta:H(4)C(3)O(1) (R)', 'Delta:H(4)C(5)O(1)\
    \ (R)', 'Delta:H(4)C(6) (K)', 'Delta:H(5)C(2) (P)', 'Delta:H(6)C(3)O(1) (C)',\
    \ 'Delta:H(6)C(3)O(1) (H)', 'Delta:H(6)C(3)O(1) (K)', 'Delta:H(6)C(3)O(1) (Protein\
    \ N-term)', 'Delta:H(6)C(6)O(1) (K)', 'Delta:H(6)C(7)O(4) (R)', 'Delta:H(8)C(6)O(1)\
    \ (K)', 'Delta:H(8)C(6)O(1) (Protein N-term)', 'Delta:H(8)C(6)O(2) (K)', 'Delta:Hg(1)\
    \ (C)', 'Delta:O(4) (W)', 'Delta:S(-1)Se(1) (C)', 'Delta:S(-1)Se(1) (M)', 'Delta:Se(1)\
    \ (C)', 'Deoxy (D)', 'Deoxy (S)', 'Deoxy (T)', 'Deoxyhypusine (K)', 'Deoxyhypusine\
    \ (Q)', 'DeStreak (C)', 'Dethiomethyl (M)', 'dHex (N)', 'dHex (S)', 'dHex (T)',\
    \ 'dHex(1)Hex(1) (S)', 'dHex(1)Hex(1) (T)', 'dHex(1)Hex(1)HexA(1)HexNAc(3) (S)',\
    \ 'dHex(1)Hex(1)HexA(1)HexNAc(3) (T)', 'dHex(1)Hex(1)HexNAc(1)Kdn(1) (S)', 'dHex(1)Hex(1)HexNAc(1)Kdn(1)\
    \ (T)', 'dHex(1)Hex(1)HexNAc(1)NeuAc(1) (S)', 'dHex(1)Hex(1)HexNAc(1)NeuAc(1)\
    \ (T)', 'dHex(1)Hex(1)HexNAc(1)NeuGc(1) (S)', 'dHex(1)Hex(1)HexNAc(1)NeuGc(1)\
    \ (T)', 'dHex(1)Hex(1)HexNAc(2)Kdn(1) (S)', 'dHex(1)Hex(1)HexNAc(2)Kdn(1) (T)',\
    \ 'dHex(1)Hex(1)HexNAc(2)NeuAc(1) (S)', 'dHex(1)Hex(1)HexNAc(2)NeuAc(1) (T)',\
    \ 'dHex(1)Hex(1)HexNAc(2)NeuAc(1)Sulf(1) (S)', 'dHex(1)Hex(1)HexNAc(2)NeuAc(1)Sulf(1)\
    \ (T)', 'dHex(1)Hex(1)HexNAc(2)NeuAc(2) (S)', 'dHex(1)Hex(1)HexNAc(2)NeuAc(2)\
    \ (T)', 'dHex(1)Hex(1)HexNAc(2)Sulf(1) (S)', 'dHex(1)Hex(1)HexNAc(2)Sulf(1) (T)',\
    \ 'dHex(1)Hex(1)HexNAc(3) (S)', 'dHex(1)Hex(1)HexNAc(3) (T)', 'dHex(1)Hex(1)HexNAc(3)NeuAc(1)\
    \ (S)', 'dHex(1)Hex(1)HexNAc(3)NeuAc(1) (T)', 'dHex(1)Hex(1)HexNAc(3)NeuAc(1)Sulf(1)\
    \ (S)', 'dHex(1)Hex(1)HexNAc(3)NeuAc(1)Sulf(1) (T)', 'dHex(1)Hex(1)HexNAc(3)NeuGc(1)\
    \ (S)', 'dHex(1)Hex(1)HexNAc(3)NeuGc(1) (T)', 'dHex(1)Hex(1)HexNAc(3)Sulf(1) (S)',\
    \ 'dHex(1)Hex(1)HexNAc(3)Sulf(1) (T)', 'dHex(1)Hex(1)HexNAc(4) (S)', 'dHex(1)Hex(1)HexNAc(4)\
    \ (T)', 'dHex(1)Hex(2) (S)', 'dHex(1)Hex(2) (T)', 'dHex(1)Hex(2)HexA(1) (S)',\
    \ 'dHex(1)Hex(2)HexA(1) (T)', 'dHex(1)Hex(2)HexA(1)HexNAc(1) (S)', 'dHex(1)Hex(2)HexA(1)HexNAc(1)\
    \ (T)', 'dHex(1)Hex(2)HexA(1)HexNAc(1)Sulf(1) (S)', 'dHex(1)Hex(2)HexA(1)HexNAc(1)Sulf(1)\
    \ (T)', 'dHex(1)Hex(2)HexA(1)HexNAc(2) (S)', 'dHex(1)Hex(2)HexA(1)HexNAc(2) (T)',\
    \ 'dHex(1)Hex(2)HexNAc(1) (S)', 'dHex(1)Hex(2)HexNAc(1) (T)', 'dHex(1)Hex(2)HexNAc(1)NeuAc(2)\
    \ (S)', 'dHex(1)Hex(2)HexNAc(1)NeuAc(2) (T)', 'dHex(1)Hex(2)HexNAc(1)Sulf(1) (S)',\
    \ 'dHex(1)Hex(2)HexNAc(1)Sulf(1) (T)', 'dHex(1)Hex(2)HexNAc(2)NeuAc(1)Sulf(1)\
    \ (S)', 'dHex(1)Hex(2)HexNAc(2)NeuAc(1)Sulf(1) (T)', 'dHex(1)Hex(2)HexNAc(2)NeuAc(2)\
    \ (S)', 'dHex(1)Hex(2)HexNAc(2)NeuAc(2) (T)', 'dHex(1)Hex(2)HexNAc(2)NeuAc(2)Sulf(1)\
    \ (S)', 'dHex(1)Hex(2)HexNAc(2)NeuAc(2)Sulf(1) (T)', 'dHex(1)Hex(2)HexNAc(2)NeuGc(1)\
    \ (N)', 'dHex(1)Hex(2)HexNAc(2)NeuGc(1) (S)', 'dHex(1)Hex(2)HexNAc(2)NeuGc(1)\
    \ (T)', 'dHex(1)Hex(2)HexNAc(2)NeuGc(2) (S)', 'dHex(1)Hex(2)HexNAc(2)NeuGc(2)\
    \ (T)', 'dHex(1)Hex(2)HexNAc(2)NeuGc(3) (S)', 'dHex(1)Hex(2)HexNAc(2)NeuGc(3)\
    \ (T)', 'dHex(1)Hex(2)HexNAc(2)Pent(1) (N)', 'dHex(1)Hex(2)HexNAc(2)Sulf(1) (S)',\
    \ 'dHex(1)Hex(2)HexNAc(2)Sulf(1) (T)', 'dHex(1)Hex(2)HexNAc(3) (N)', 'dHex(1)Hex(2)HexNAc(3)\
    \ (S)', 'dHex(1)Hex(2)HexNAc(3) (T)', 'dHex(1)Hex(2)HexNAc(3)NeuAc(1) (S)', 'dHex(1)Hex(2)HexNAc(3)NeuAc(1)\
    \ (T)', 'dHex(1)Hex(2)HexNAc(3)NeuAc(1)Sulf(1) (S)', 'dHex(1)Hex(2)HexNAc(3)NeuAc(1)Sulf(1)\
    \ (T)', 'dHex(1)Hex(2)HexNAc(3)Sulf(1) (S)', 'dHex(1)Hex(2)HexNAc(3)Sulf(1) (T)',\
    \ 'dHex(1)Hex(2)HexNAc(4) (N)', 'dHex(1)Hex(2)HexNAc(4) (S)', 'dHex(1)Hex(2)HexNAc(4)\
    \ (T)', 'dHex(1)Hex(2)HexNAc(4)NeuAc(1) (S)', 'dHex(1)Hex(2)HexNAc(4)NeuAc(1)\
    \ (T)', 'dHex(1)Hex(2)HexNAc(4)NeuAc(2) (S)', 'dHex(1)Hex(2)HexNAc(4)NeuAc(2)\
    \ (T)', 'dHex(1)Hex(2)HexNAc(4)Sulf(2) (S)', 'dHex(1)Hex(2)HexNAc(4)Sulf(2) (T)',\
    \ 'dHex(1)Hex(3) (S)', 'dHex(1)Hex(3) (T)', 'dHex(1)Hex(3)HexA(1)HexNAc(1) (S)',\
    \ 'dHex(1)Hex(3)HexA(1)HexNAc(1) (T)', 'dHex(1)Hex(3)HexA(1)HexNAc(1)Sulf(1) (S)',\
    \ 'dHex(1)Hex(3)HexA(1)HexNAc(1)Sulf(1) (T)', 'dHex(1)Hex(3)HexA(1)HexNAc(2) (S)',\
    \ 'dHex(1)Hex(3)HexA(1)HexNAc(2) (T)', 'dHex(1)Hex(3)HexA(1)HexNAc(2)Sulf(1) (S)',\
    \ 'dHex(1)Hex(3)HexA(1)HexNAc(2)Sulf(1) (T)', 'dHex(1)Hex(3)HexA(1)HexNAc(3)Sulf(1)\
    \ (S)', 'dHex(1)Hex(3)HexA(1)HexNAc(3)Sulf(1) (T)', 'dHex(1)Hex(3)HexA(2)HexNAc(2)\
    \ (S)', 'dHex(1)Hex(3)HexA(2)HexNAc(2) (T)', 'dHex(1)Hex(3)HexNAc(1) (S)', 'dHex(1)Hex(3)HexNAc(1)\
    \ (T)', 'dHex(1)Hex(3)HexNAc(1)Sulf(1) (S)', 'dHex(1)Hex(3)HexNAc(1)Sulf(1) (T)',\
    \ 'dHex(1)Hex(3)HexNAc(2) (N)', 'dHex(1)Hex(3)HexNAc(2) (S)', 'dHex(1)Hex(3)HexNAc(2)\
    \ (T)', 'dHex(1)Hex(3)HexNAc(2)NeuGc(1) (S)', 'dHex(1)Hex(3)HexNAc(2)NeuGc(1)\
    \ (T)', 'dHex(1)Hex(3)HexNAc(2)Pent(1) (N)', 'dHex(1)Hex(3)HexNAc(2)Sulf(1) (N)',\
    \ 'dHex(1)Hex(3)HexNAc(2)Sulf(1) (S)', 'dHex(1)Hex(3)HexNAc(2)Sulf(1) (T)', 'dHex(1)Hex(3)HexNAc(3)\
    \ (N)', 'dHex(1)Hex(3)HexNAc(3) (S)', 'dHex(1)Hex(3)HexNAc(3) (T)', 'dHex(1)Hex(3)HexNAc(3)NeuAc(2)\
    \ (S)', 'dHex(1)Hex(3)HexNAc(3)NeuAc(2) (T)', 'dHex(1)Hex(3)HexNAc(3)Pent(1) (N)',\
    \ 'dHex(1)Hex(3)HexNAc(3)Pent(2) (N)', 'dHex(1)Hex(3)HexNAc(3)Pent(3) (N)', 'dHex(1)Hex(3)HexNAc(3)Sulf(1)\
    \ (S)', 'dHex(1)Hex(3)HexNAc(3)Sulf(1) (T)', 'dHex(1)Hex(3)HexNAc(4) (N)', 'dHex(1)Hex(3)HexNAc(4)\
    \ (S)', 'dHex(1)Hex(3)HexNAc(4) (T)', 'dHex(1)Hex(3)HexNAc(4)NeuAc(1) (N)', 'dHex(1)Hex(3)HexNAc(4)Pent(1)\
    \ (N)', 'dHex(1)Hex(3)HexNAc(4)Pent(2) (N)', 'dHex(1)Hex(3)HexNAc(4)Pent(3) (N)',\
    \ 'dHex(1)Hex(3)HexNAc(4)Sulf(1) (N)', 'dHex(1)Hex(3)HexNAc(5) (N)', 'dHex(1)Hex(3)HexNAc(5)\
    \ (S)', 'dHex(1)Hex(3)HexNAc(5) (T)', 'dHex(1)Hex(3)HexNAc(5)NeuAc(1) (N)', 'dHex(1)Hex(3)HexNAc(5)NeuAc(1)\
    \ (S)', 'dHex(1)Hex(3)HexNAc(5)NeuAc(1) (T)', 'dHex(1)Hex(3)HexNAc(5)Sulf(1) (N)',\
    \ 'dHex(1)Hex(3)HexNAc(6) (N)', 'dHex(1)Hex(3)HexNAc(6) (S)', 'dHex(1)Hex(3)HexNAc(6)\
    \ (T)', 'dHex(1)Hex(3)HexNAc(6)Sulf(1) (N)', 'dHex(1)Hex(4) (S)', 'dHex(1)Hex(4)\
    \ (T)', 'dHex(1)Hex(4)HexA(1) (S)', 'dHex(1)Hex(4)HexA(1) (T)', 'dHex(1)Hex(4)HexA(1)HexNAc(2)\
    \ (S)', 'dHex(1)Hex(4)HexA(1)HexNAc(2) (T)', 'dHex(1)Hex(4)HexA(1)HexNAc(3)Sulf(1)\
    \ (S)', 'dHex(1)Hex(4)HexA(1)HexNAc(3)Sulf(1) (T)', 'dHex(1)Hex(4)HexNAc(1)Pent(1)\
    \ (N)', 'dHex(1)Hex(4)HexNAc(2) (N)', 'dHex(1)Hex(4)HexNAc(2) (S)', 'dHex(1)Hex(4)HexNAc(2)\
    \ (T)', 'dHex(1)Hex(4)HexNAc(2)Pent(1) (N)', 'dHex(1)Hex(4)HexNAc(3) (N)', 'dHex(1)Hex(4)HexNAc(3)NeuAc(1)\
    \ (N)', 'dHex(1)Hex(4)HexNAc(3)NeuAc(1) (S)', 'dHex(1)Hex(4)HexNAc(3)NeuAc(1)\
    \ (T)', 'dHex(1)Hex(4)HexNAc(3)NeuAc(1)Sulf(1) (N)', 'dHex(1)Hex(4)HexNAc(3)NeuGc(1)\
    \ (N)', 'dHex(1)Hex(4)HexNAc(3)Pent(1) (N)', 'dHex(1)Hex(4)HexNAc(3)Sulf(1) (N)',\
    \ 'dHex(1)Hex(4)HexNAc(4) (N)', 'dHex(1)Hex(4)HexNAc(4) (S)', 'dHex(1)Hex(4)HexNAc(4)\
    \ (T)', 'dHex(1)Hex(4)HexNAc(4)NeuAc(1) (N)', 'dHex(1)Hex(4)HexNAc(4)NeuAc(1)\
    \ (S)', 'dHex(1)Hex(4)HexNAc(4)NeuAc(1) (T)', 'dHex(1)Hex(4)HexNAc(4)NeuAc(1)Sulf(1)\
    \ (N)', 'dHex(1)Hex(4)HexNAc(4)Pent(1) (N)', 'dHex(1)Hex(4)HexNAc(4)Sulf(1) (N)',\
    \ 'dHex(1)Hex(4)HexNAc(5) (N)', 'dHex(1)Hex(4)HexNAc(5)Sulf(1) (N)', 'dHex(1)Hex(5)\
    \ (S)', 'dHex(1)Hex(5) (T)', 'dHex(1)Hex(5)HexA(1)HexNAc(3)Sulf(1) (N)', 'dHex(1)Hex(5)HexA(1)HexNAc(3)Sulf(2)\
    \ (N)', 'dHex(1)Hex(5)HexNAc(2) (N)', 'dHex(1)Hex(5)HexNAc(2)Pent(1) (N)', 'dHex(1)Hex(5)HexNAc(3)\
    \ (N)', 'dHex(1)Hex(5)HexNAc(3)NeuAc(1) (N)', 'dHex(1)Hex(5)HexNAc(3)NeuAc(1)Sulf(1)\
    \ (N)', 'dHex(1)Hex(5)HexNAc(3)NeuGc(1) (N)', 'dHex(1)Hex(5)HexNAc(3)NeuGc(1)Sulf(1)\
    \ (N)', 'dHex(1)Hex(5)HexNAc(3)Sulf(1) (N)', 'dHex(1)Hex(5)HexNAc(4) (N)', 'dHex(1)Hex(5)HexNAc(4)Me(2)Pent(1)\
    \ (N)', 'dHex(1)Hex(5)HexNAc(4)NeuAc(1) (N)', 'dHex(1)Hex(5)HexNAc(4)NeuAc(2)\
    \ (N)', 'dHex(1)Hex(5)HexNAc(4)Pent(1) (N)', 'dHex(1)Hex(5)HexNAc(4)Sulf(1) (N)',\
    \ 'dHex(1)Hex(5)HexNAc(4)Sulf(2) (N)', 'dHex(1)Hex(5)HexNAc(5) (N)', 'dHex(1)Hex(6)\
    \ (S)', 'dHex(1)Hex(6) (T)', 'dHex(1)Hex(6)HexNAc(2) (N)', 'dHex(1)Hex(6)HexNAc(3)\
    \ (N)', 'dHex(1)Hex(6)HexNAc(3)Sulf(1) (N)', 'dHex(1)Hex(6)HexNAc(4) (N)', 'dHex(1)Hex(7)HexNAc(2)\
    \ (N)', 'dHex(1)Hex(7)HexNAc(3) (N)', 'dHex(1)Hex(7)HexNAc(3)Phos(1) (N)', 'dHex(1)Hex(7)HexNAc(3)Sulf(1)\
    \ (N)', 'dHex(1)Hex(7)HexNAc(4) (N)', 'dHex(1)Hex(8)HexNAc(2) (N)', 'dHex(1)HexNAc(3)\
    \ (S)', 'dHex(1)HexNAc(3) (T)', 'dHex(1)HexNAc(4) (S)', 'dHex(1)HexNAc(4) (T)',\
    \ 'dHex(1)HexNAc(5) (S)', 'dHex(1)HexNAc(5) (T)', 'dHex(2)Hex(1)HexNAc(1)Kdn(1)\
    \ (S)', 'dHex(2)Hex(1)HexNAc(1)Kdn(1) (T)', 'dHex(2)Hex(1)HexNAc(2)Kdn(1) (S)',\
    \ 'dHex(2)Hex(1)HexNAc(2)Kdn(1) (T)', 'dHex(2)Hex(1)HexNAc(2)NeuAc(1) (S)', 'dHex(2)Hex(1)HexNAc(2)NeuAc(1)\
    \ (T)', 'dHex(2)Hex(1)HexNAc(2)NeuGc(1) (S)', 'dHex(2)Hex(1)HexNAc(2)NeuGc(1)\
    \ (T)', 'dHex(2)Hex(1)HexNAc(3) (S)', 'dHex(2)Hex(1)HexNAc(3) (T)', 'dHex(2)Hex(1)HexNAc(4)Sulf(1)\
    \ (S)', 'dHex(2)Hex(1)HexNAc(4)Sulf(1) (T)', 'dHex(2)Hex(2) (S)', 'dHex(2)Hex(2)\
    \ (T)', 'dHex(2)Hex(2)HexA(1) (S)', 'dHex(2)Hex(2)HexA(1) (T)', 'dHex(2)Hex(2)HexA(1)HexNAc(1)\
    \ (S)', 'dHex(2)Hex(2)HexA(1)HexNAc(1) (T)', 'dHex(2)Hex(2)HexA(1)HexNAc(2)Sulf(1)\
    \ (S)', 'dHex(2)Hex(2)HexA(1)HexNAc(2)Sulf(1) (T)', 'dHex(2)Hex(2)HexNAc(1) (S)',\
    \ 'dHex(2)Hex(2)HexNAc(1) (T)', 'dHex(2)Hex(2)HexNAc(2) (N)', 'dHex(2)Hex(2)HexNAc(2)\
    \ (S)', 'dHex(2)Hex(2)HexNAc(2) (T)', 'dHex(2)Hex(2)HexNAc(2)Kdn(1) (S)', 'dHex(2)Hex(2)HexNAc(2)Kdn(1)\
    \ (T)', 'dHex(2)Hex(2)HexNAc(2)NeuAc(1) (S)', 'dHex(2)Hex(2)HexNAc(2)NeuAc(1)\
    \ (T)', 'dHex(2)Hex(2)HexNAc(2)NeuAc(1)Sulf(1) (S)', 'dHex(2)Hex(2)HexNAc(2)NeuAc(1)Sulf(1)\
    \ (T)', 'dHex(2)Hex(2)HexNAc(2)NeuGc(1) (S)', 'dHex(2)Hex(2)HexNAc(2)NeuGc(1)\
    \ (T)', 'dHex(2)Hex(2)HexNAc(2)Sulf(1) (S)', 'dHex(2)Hex(2)HexNAc(2)Sulf(1) (T)',\
    \ 'dHex(2)Hex(2)HexNAc(2)Sulf(2) (S)', 'dHex(2)Hex(2)HexNAc(2)Sulf(2) (T)', 'dHex(2)Hex(2)HexNAc(3)\
    \ (N)', 'dHex(2)Hex(2)HexNAc(3) (S)', 'dHex(2)Hex(2)HexNAc(3) (T)', 'dHex(2)Hex(2)HexNAc(3)NeuAc(1)\
    \ (S)', 'dHex(2)Hex(2)HexNAc(3)NeuAc(1) (T)', 'dHex(2)Hex(2)HexNAc(3)NeuGc(1)\
    \ (S)', 'dHex(2)Hex(2)HexNAc(3)NeuGc(1) (T)', 'dHex(2)Hex(2)HexNAc(3)Sulf(1) (S)',\
    \ 'dHex(2)Hex(2)HexNAc(3)Sulf(1) (T)', 'dHex(2)Hex(2)HexNAc(4) (S)', 'dHex(2)Hex(2)HexNAc(4)\
    \ (T)', 'dHex(2)Hex(2)HexNAc(4)Sulf(2) (S)', 'dHex(2)Hex(2)HexNAc(4)Sulf(2) (T)',\
    \ 'dHex(2)Hex(2)HexNAc(5) (S)', 'dHex(2)Hex(2)HexNAc(5) (T)', 'dHex(2)Hex(2)HexNAc(6)Sulf(1)\
    \ (S)', 'dHex(2)Hex(2)HexNAc(6)Sulf(1) (T)', 'dHex(2)Hex(3) (S)', 'dHex(2)Hex(3)\
    \ (T)', 'dHex(2)Hex(3)HexA(1)HexNAc(1)Sulf(1) (S)', 'dHex(2)Hex(3)HexA(1)HexNAc(1)Sulf(1)\
    \ (T)', 'dHex(2)Hex(3)HexA(1)HexNAc(2)Sulf(1) (S)', 'dHex(2)Hex(3)HexA(1)HexNAc(2)Sulf(1)\
    \ (T)', 'dHex(2)Hex(3)HexA(1)HexNAc(3)Sulf(1) (S)', 'dHex(2)Hex(3)HexA(1)HexNAc(3)Sulf(1)\
    \ (T)', 'dHex(2)Hex(3)HexNAc(1)Sulf(1) (S)', 'dHex(2)Hex(3)HexNAc(1)Sulf(1) (T)',\
    \ 'dHex(2)Hex(3)HexNAc(2) (N)', 'dHex(2)Hex(3)HexNAc(2) (S)', 'dHex(2)Hex(3)HexNAc(2)\
    \ (T)', 'dHex(2)Hex(3)HexNAc(2)NeuGc(1) (S)', 'dHex(2)Hex(3)HexNAc(2)NeuGc(1)\
    \ (T)', 'dHex(2)Hex(3)HexNAc(2)Sulf(1) (S)', 'dHex(2)Hex(3)HexNAc(2)Sulf(1) (T)',\
    \ 'dHex(2)Hex(3)HexNAc(3) (N)', 'dHex(2)Hex(3)HexNAc(3) (S)', 'dHex(2)Hex(3)HexNAc(3)\
    \ (T)', 'dHex(2)Hex(3)HexNAc(3)NeuAc(1) (S)', 'dHex(2)Hex(3)HexNAc(3)NeuAc(1)\
    \ (T)', 'dHex(2)Hex(3)HexNAc(3)NeuAc(2) (S)', 'dHex(2)Hex(3)HexNAc(3)NeuAc(2)\
    \ (T)', 'dHex(2)Hex(3)HexNAc(3)Pent(1) (N)', 'dHex(2)Hex(3)HexNAc(3)Pent(2) (N)',\
    \ 'dHex(2)Hex(3)HexNAc(3)Sulf(1) (S)', 'dHex(2)Hex(3)HexNAc(3)Sulf(1) (T)', 'dHex(2)Hex(3)HexNAc(4)\
    \ (N)', 'dHex(2)Hex(3)HexNAc(4) (S)', 'dHex(2)Hex(3)HexNAc(4) (T)', 'dHex(2)Hex(3)HexNAc(4)NeuAc(1)\
    \ (N)', 'dHex(2)Hex(3)HexNAc(4)Pent(1) (N)', 'dHex(2)Hex(3)HexNAc(4)Pent(2) (N)',\
    \ 'dHex(2)Hex(3)HexNAc(5) (N)', 'dHex(2)Hex(3)HexNAc(5) (S)', 'dHex(2)Hex(3)HexNAc(5)\
    \ (T)', 'dHex(2)Hex(3)HexNAc(6) (N)', 'dHex(2)Hex(4) (S)', 'dHex(2)Hex(4) (T)',\
    \ 'dHex(2)Hex(4)HexA(1)HexNAc(3)Sulf(1) (S)', 'dHex(2)Hex(4)HexA(1)HexNAc(3)Sulf(1)\
    \ (T)', 'dHex(2)Hex(4)HexNAc(1) (S)', 'dHex(2)Hex(4)HexNAc(1) (T)', 'dHex(2)Hex(4)HexNAc(2)\
    \ (N)', 'dHex(2)Hex(4)HexNAc(2) (S)', 'dHex(2)Hex(4)HexNAc(2) (T)', 'dHex(2)Hex(4)HexNAc(3)\
    \ (N)', 'dHex(2)Hex(4)HexNAc(3)NeuAc(1)Sulf(1) (N)', 'dHex(2)Hex(4)HexNAc(3)Pent(1)\
    \ (N)', 'dHex(2)Hex(4)HexNAc(4) (N)', 'dHex(2)Hex(4)HexNAc(4) (S)', 'dHex(2)Hex(4)HexNAc(4)\
    \ (T)', 'dHex(2)Hex(4)HexNAc(4)Pent(1) (N)', 'dHex(2)Hex(4)HexNAc(4)Sulf(1) (N)',\
    \ 'dHex(2)Hex(4)HexNAc(5) (N)', 'dHex(2)Hex(4)HexNAc(5) (S)', 'dHex(2)Hex(4)HexNAc(5)\
    \ (T)', 'dHex(2)Hex(5)HexNAc(2)Me(1) (S)', 'dHex(2)Hex(5)HexNAc(2)Me(1) (T)',\
    \ 'dHex(2)Hex(5)HexNAc(3)Pent(1) (N)', 'dHex(2)Hex(5)HexNAc(4) (N)', 'dHex(2)HexNAc(2)Kdn(1)\
    \ (S)', 'dHex(2)HexNAc(2)Kdn(1) (T)', 'dHex(2)HexNAc(5) (S)', 'dHex(2)HexNAc(5)\
    \ (T)', 'dHex(2)HexNAc(7) (S)', 'dHex(2)HexNAc(7) (T)', 'dHex(3)Hex(1)HexNAc(2)Kdn(1)\
    \ (S)', 'dHex(3)Hex(1)HexNAc(2)Kdn(1) (T)', 'dHex(3)Hex(1)HexNAc(3)Kdn(1) (S)',\
    \ 'dHex(3)Hex(1)HexNAc(3)Kdn(1) (T)', 'dHex(3)Hex(2)HexA(1)HexNAc(2)Sulf(1) (S)',\
    \ 'dHex(3)Hex(2)HexA(1)HexNAc(2)Sulf(1) (T)', 'dHex(3)Hex(2)HexNAc(2) (S)', 'dHex(3)Hex(2)HexNAc(2)\
    \ (T)', 'dHex(3)Hex(2)HexNAc(2)Kdn(1) (S)', 'dHex(3)Hex(2)HexNAc(2)Kdn(1) (T)',\
    \ 'dHex(3)Hex(2)HexNAc(3) (S)', 'dHex(3)Hex(2)HexNAc(3) (T)', 'dHex(3)Hex(2)HexNAc(3)Kdn(1)\
    \ (S)', 'dHex(3)Hex(2)HexNAc(3)Kdn(1) (T)', 'dHex(3)Hex(2)HexNAc(4) (S)', 'dHex(3)Hex(2)HexNAc(4)\
    \ (T)', 'dHex(3)Hex(2)HexNAc(4)Sulf(2) (S)', 'dHex(3)Hex(2)HexNAc(4)Sulf(2) (T)',\
    \ 'dHex(3)Hex(3)HexNAc(1) (S)', 'dHex(3)Hex(3)HexNAc(1) (T)', 'dHex(3)Hex(3)HexNAc(2)\
    \ (S)', 'dHex(3)Hex(3)HexNAc(2) (T)', 'dHex(3)Hex(3)HexNAc(3) (S)', 'dHex(3)Hex(3)HexNAc(3)\
    \ (T)', 'dHex(3)Hex(3)HexNAc(3)NeuAc(1) (S)', 'dHex(3)Hex(3)HexNAc(3)NeuAc(1)\
    \ (T)', 'dHex(3)Hex(3)HexNAc(3)Pent(1) (N)', 'dHex(3)Hex(3)HexNAc(4) (N)', 'dHex(3)Hex(3)HexNAc(4)Pent(1)\
    \ (N)', 'dHex(3)Hex(4)HexNAc(4) (N)', 'dHex(3)Hex(4)HexNAc(4) (S)', 'dHex(3)Hex(4)HexNAc(4)\
    \ (T)', 'dHex(3)Hex(4)HexNAc(4)Sulf(1) (N)', 'dHex(3)HexNAc(3)Kdn(1) (S)', 'dHex(3)HexNAc(3)Kdn(1)\
    \ (T)', 'dHex(4)Hex(1)HexNAc(1)Kdn(2) (S)', 'dHex(4)Hex(1)HexNAc(1)Kdn(2) (T)',\
    \ 'dHex(4)Hex(1)HexNAc(2)Kdn(1) (S)', 'dHex(4)Hex(1)HexNAc(2)Kdn(1) (T)', 'dHex(4)Hex(1)HexNAc(3)Kdn(1)\
    \ (S)', 'dHex(4)Hex(1)HexNAc(3)Kdn(1) (T)', 'dHex(4)Hex(2)HexNAc(2)Kdn(1) (S)',\
    \ 'dHex(4)Hex(2)HexNAc(2)Kdn(1) (T)', 'dHex(4)Hex(2)HexNAc(3) (S)', 'dHex(4)Hex(2)HexNAc(3)\
    \ (T)', 'dHex(4)Hex(3)HexNAc(2)NeuAc(1) (S)', 'dHex(4)Hex(3)HexNAc(2)NeuAc(1)\
    \ (T)', 'dHex(4)Hex(3)HexNAc(3) (S)', 'dHex(4)Hex(3)HexNAc(3) (T)', 'dHex(4)HexNAc(3)Kdn(1)\
    \ (S)', 'dHex(4)HexNAc(3)Kdn(1) (T)', 'DHP (C)', 'Diacylglycerol (C)', 'DiART6plex\
    \ (K)', 'DiART6plex (N-term)', 'DiART6plex (Protein N-term)', 'DiART6plex (Y)',\
    \ 'DiART6plex115 (K)', 'DiART6plex115 (N-term)', 'DiART6plex115 (Protein N-term)',\
    \ 'DiART6plex115 (Y)', 'DiART6plex116/119 (K)', 'DiART6plex116/119 (N-term)',\
    \ 'DiART6plex116/119 (Protein N-term)', 'DiART6plex116/119 (Y)', 'DiART6plex117\
    \ (K)', 'DiART6plex117 (N-term)', 'DiART6plex117 (Protein N-term)', 'DiART6plex117\
    \ (Y)', 'DiART6plex118 (K)', 'DiART6plex118 (N-term)', 'DiART6plex118 (Protein\
    \ N-term)', 'DiART6plex118 (Y)', 'Dibromo (Y)', 'Dicarbamidomethyl (C)', 'Dicarbamidomethyl\
    \ (H)', 'Dicarbamidomethyl (K)', 'Dicarbamidomethyl (N-term)', 'Dicarbamidomethyl\
    \ (R)', 'dichlorination (C)', 'dichlorination (Y)', 'Didehydro (C-term K)', 'Didehydro\
    \ (S)', 'Didehydro (T)', 'Didehydro (Y)', 'Didehydroretinylidene (K)', 'Diethyl\
    \ (K)', 'Diethyl (N-term)', 'Diethylphosphate (C)', 'Diethylphosphate (H)', 'Diethylphosphate\
    \ (K)', 'Diethylphosphate (N-term)', 'Diethylphosphate (S)', 'Diethylphosphate\
    \ (T)', 'Diethylphosphate (Y)', 'Diethylphosphothione (C)', 'Diethylphosphothione\
    \ (H)', 'Diethylphosphothione (K)', 'Diethylphosphothione (S)', 'Diethylphosphothione\
    \ (T)', 'Diethylphosphothione (Y)', 'Difuran (Y)', 'Dihydroxyimidazolidine (R)',\
    \ 'Diiodo (H)', 'Diiodo (Y)', 'Diironsubcluster (C)', 'Diisopropylphosphate (K)',\
    \ 'Diisopropylphosphate (N-term)', 'Diisopropylphosphate (S)', 'Diisopropylphosphate\
    \ (T)', 'Diisopropylphosphate (Y)', 'DiLeu4plex (K)', 'DiLeu4plex (N-term)', 'DiLeu4plex\
    \ (Y)', 'DiLeu4plex115 (K)', 'DiLeu4plex115 (N-term)', 'DiLeu4plex115 (Y)', 'DiLeu4plex117\
    \ (K)', 'DiLeu4plex117 (N-term)', 'DiLeu4plex117 (Y)', 'DiLeu4plex118 (K)', 'DiLeu4plex118\
    \ (N-term)', 'DiLeu4plex118 (Y)', 'Dimethyl (K)', 'Dimethyl (N)', 'Dimethyl (N-term)',\
    \ 'Dimethyl (Protein N-term P)', 'Dimethyl (Protein N-term)', 'Dimethyl (R)',\
    \ 'Dimethyl:2H(2)13C (K)', 'Dimethyl:2H(2)13C (N)', 'Dimethyl:2H(2)13C (N-term)',\
    \ 'Dimethyl:2H(2)13C (Protein N-term P)', 'Dimethyl:2H(2)13C (R)', 'Dimethyl:2H(4)\
    \ (K)', 'Dimethyl:2H(4) (N-term)', 'Dimethyl:2H(4) (Protein N-term)', 'Dimethyl:2H(4)\
    \ (R)', 'Dimethyl:2H(4)13C(2) (K)', 'Dimethyl:2H(4)13C(2) (N-term)', 'Dimethyl:2H(4)13C(2)\
    \ (Protein N-term)', 'Dimethyl:2H(4)13C(2) (R)', 'Dimethyl:2H(6) (K)', 'Dimethyl:2H(6)\
    \ (N-term)', 'Dimethyl:2H(6) (R)', 'Dimethyl:2H(6)13C(2) (K)', 'Dimethyl:2H(6)13C(2)\
    \ (N-term)', 'Dimethyl:2H(6)13C(2) (Protein N-term)', 'Dimethyl:2H(6)13C(2) (R)',\
    \ 'DimethylamineGMBS (C)', 'Dimethylaminoethyl (C)', 'DimethylArsino (C)', 'Dimethylphosphothione\
    \ (C)', 'Dimethylphosphothione (H)', 'Dimethylphosphothione (K)', 'Dimethylphosphothione\
    \ (S)', 'Dimethylphosphothione (T)', 'Dimethylphosphothione (Y)', 'DimethylpyrroleAdduct\
    \ (K)', 'Dioxidation (C)', 'Dioxidation (E)', 'Dioxidation (F)', 'Dioxidation\
    \ (I)', 'Dioxidation (K)', 'Dioxidation (L)', 'Dioxidation (M)', 'Dioxidation\
    \ (P)', 'Dioxidation (R)', 'Dioxidation (U)', 'Dioxidation (V)', 'Dioxidation\
    \ (W)', 'Dioxidation (Y)', 'Diphthamide (H)', 'Dipyridyl (C)', 'Dipyrrolylmethanemethyl\
    \ (C)', 'DMPO (C)', 'DMPO (H)', 'DMPO (Y)', 'DNCB_hapten (C)', 'DNCB_hapten (H)',\
    \ 'DNCB_hapten (K)', 'DNCB_hapten (Y)', 'dNIC (K)', 'dNIC (N-term)', 'DNPS (C)',\
    \ 'DNPS (W)', 'DTT (C)', 'DyLight-maleimide (C)', 'DYn-2 (C)', 'EDEDTIDVFQQQTGG\
    \ (K)', 'EDT-iodoacetyl-PEO-biotin (S)', 'EDT-iodoacetyl-PEO-biotin (T)', 'EDT-maleimide-PEO-biotin\
    \ (S)', 'EDT-maleimide-PEO-biotin (T)', 'EEEDVIEVYQEQTGG (K)', 'EGCG1 (C)', 'EGCG2\
    \ (C)', 'EHD-diphenylpentanone (C)', 'EHD-diphenylpentanone (M)', 'EQAT (C)',\
    \ 'EQAT:2H(5) (C)', 'EQIGG (K)', 'ESP (K)', 'ESP (N-term)', 'ESP:2H(10) (K)',\
    \ 'ESP:2H(10) (N-term)', 'Ethanedithiol (S)', 'Ethanedithiol (T)', 'Ethanolamine\
    \ (C)', 'Ethanolamine (C-term)', 'Ethanolamine (D)', 'Ethanolamine (E)', 'Ethanolyl\
    \ (C)', 'Ethanolyl (K)', 'Ethanolyl (R)', 'Ethoxyformyl (H)', 'Ethyl (C-term)',\
    \ 'Ethyl (D)', 'Ethyl (E)', 'Ethyl (K)', 'Ethyl (N-term)', 'Ethyl (Protein N-term)',\
    \ 'Ethyl+Deamidated (N)', 'Ethyl+Deamidated (Q)', 'ethylamino (S)', 'ethylamino\
    \ (T)', 'Ethylphosphate (K)', 'Ethylphosphate (N-term)', 'Ethylphosphate (S)',\
    \ 'Ethylphosphate (T)', 'Ethylphosphate (Y)', 'ethylsulfonylethyl (C)', 'ethylsulfonylethyl\
    \ (H)', 'ethylsulfonylethyl (K)', 'ExacTagAmine (K)', 'ExacTagThiol (C)', 'FAD\
    \ (C)', 'FAD (H)', 'FAD (Y)', 'Farnesyl (C)', 'Fluorescein (C)', 'Fluorescein-tyramine\
    \ (Y)', 'Fluoro (A)', 'Fluoro (F)', 'Fluoro (W)', 'Fluoro (Y)', 'FMN (S)', 'FMN\
    \ (T)', 'FMNC (C)', 'FMNH (C)', 'FMNH (H)', 'FNEM (C)', 'Formyl (K)', 'Formyl\
    \ (N-term)', 'Formyl (Protein N-term)', 'Formyl (S)', 'Formyl (T)', 'Formylasparagine\
    \ (H)', 'FormylMet (Protein N-term)', 'FP-Biotin (K)', 'FP-Biotin (S)', 'FP-Biotin\
    \ (T)', 'FP-Biotin (Y)', 'FTC (C)', 'FTC (K)', 'FTC (P)', 'FTC (R)', 'FTC (S)',\
    \ 'Furan (Y)', 'G-H1 (R)', 'Galactosyl (K)', 'Galactosyl (N-term)', 'GEE (Q)',\
    \ 'GeranylGeranyl (C)', 'GG (C)', 'GG (K)', 'GG (Protein N-term)', 'GG (S)', 'GG\
    \ (T)', 'GGQ (K)', 'GIST-Quat (K)', 'GIST-Quat (N-term)', 'GIST-Quat:2H(3) (K)',\
    \ 'GIST-Quat:2H(3) (N-term)', 'GIST-Quat:2H(6) (K)', 'GIST-Quat:2H(6) (N-term)',\
    \ 'GIST-Quat:2H(9) (K)', 'GIST-Quat:2H(9) (N-term)', 'Gln->Ala (Q)', 'Gln->Arg\
    \ (Q)', 'Gln->Asn (Q)', 'Gln->Asp (Q)', 'Gln->Cys (Q)', 'Gln->Glu (Q)', 'Gln->Gly\
    \ (Q)', 'Gln->His (Q)', 'Gln->Lys (Q)', 'Gln->Met (Q)', 'Gln->Phe (Q)', 'Gln->Pro\
    \ (Q)', 'Gln->pyro-Glu (N-term Q)', 'Gln->Ser (Q)', 'Gln->Thr (Q)', 'Gln->Trp\
    \ (Q)', 'Gln->Tyr (Q)', 'Gln->Val (Q)', 'Gln->Xle (Q)', 'Glu (E)', 'Glu (Protein\
    \ C-term)', 'Glu->Ala (E)', 'Glu->Arg (E)', 'Glu->Asn (E)', 'Glu->Asp (E)', 'Glu->Cys\
    \ (E)', 'Glu->Gln (E)', 'Glu->Gly (E)', 'Glu->His (E)', 'Glu->Lys (E)', 'Glu->Met\
    \ (E)', 'Glu->Phe (E)', 'Glu->Pro (E)', 'Glu->pyro-Glu (N-term E)', 'Glu->pyro-Glu+Methyl\
    \ (N-term E)', 'Glu->pyro-Glu+Methyl (N-term E)', 'Glu->pyro-Glu+Methyl:2H(2)13C\
    \ (N-term E)', 'Glu->pyro-Glu+Methyl:2H(2)13C(1) (N-term E)', 'Glu->Ser (E)',\
    \ 'Glu->Thr (E)', 'Glu->Trp (E)', 'Glu->Tyr (E)', 'Glu->Val (E)', 'Glu->Xle (E)',\
    \ 'glucosone (R)', 'Glucosylgalactosyl (K)', 'Glucuronyl (Protein N-term)', 'Glucuronyl\
    \ (S)', 'Glucuronyl (T)', 'GluGlu (E)', 'GluGlu (Protein C-term)', 'GluGluGlu\
    \ (E)', 'GluGluGlu (Protein C-term)', 'GluGluGluGlu (E)', 'GluGluGluGlu (Protein\
    \ C-term)', 'Gluratylation (K)', 'Glutathione (C)', 'Gly (K)', 'Gly (S)', 'Gly\
    \ (T)', 'Gly->Ala (G)', 'Gly->Arg (G)', 'Gly->Asn (G)', 'Gly->Asp (G)', 'Gly->Cys\
    \ (G)', 'Gly->Gln (G)', 'Gly->Glu (G)', 'Gly->His (G)', 'Gly->Lys (G)', 'Gly->Met\
    \ (G)', 'Gly->Phe (G)', 'Gly->Pro (G)', 'Gly->Ser (G)', 'Gly->Thr (G)', 'Gly->Trp\
    \ (G)', 'Gly->Tyr (G)', 'Gly->Val (G)', 'Gly->Xle (G)', 'Gly-loss+Amide (C-term\
    \ G)', 'Glycerophospho (S)', 'GlycerylPE (E)', 'glycidamide (K)', 'glycidamide\
    \ (N-term)', 'Glycosyl (P)', 'glyoxalAGE (R)', 'GNLLFLACYCIGG (K)', 'GPIanchor\
    \ (Protein C-term)', 'Guanidinyl (K)', 'Guanidinyl (N-term)', 'Haloxon (C)', 'Haloxon\
    \ (H)', 'Haloxon (K)', 'Haloxon (S)', 'Haloxon (T)', 'Haloxon (Y)', 'HCysteinyl\
    \ (C)', 'HCysThiolactone (K)', 'Heme (C)', 'Heme (H)', 'Hep (K)', 'Hep (N)', 'Hep\
    \ (Q)', 'Hep (R)', 'Hep (S)', 'Hep (T)', 'Hex (C)', 'Hex (K)', 'Hex (N)', 'Hex\
    \ (N-term)', 'Hex (R)', 'Hex (S)', 'Hex (T)', 'Hex (W)', 'Hex (Y)', 'Hex(1)HexA(1)\
    \ (S)', 'Hex(1)HexA(1) (T)', 'Hex(1)HexA(1)HexNAc(1) (S)', 'Hex(1)HexA(1)HexNAc(1)\
    \ (T)', 'Hex(1)HexA(1)HexNAc(2) (S)', 'Hex(1)HexA(1)HexNAc(2) (T)', 'Hex(1)HexNAc(1)\
    \ (N)', 'Hex(1)HexNAc(1) (S)', 'Hex(1)HexNAc(1) (T)', 'Hex(1)HexNAc(1)dHex(1)\
    \ (N)', 'Hex(1)HexNAc(1)dHex(1) (S)', 'Hex(1)HexNAc(1)dHex(1) (T)', 'Hex(1)HexNAc(1)dHex(1)Me(1)\
    \ (S)', 'Hex(1)HexNAc(1)dHex(1)Me(1) (T)', 'Hex(1)HexNAc(1)dHex(1)Me(2) (S)',\
    \ 'Hex(1)HexNAc(1)dHex(1)Me(2) (T)', 'Hex(1)HexNAc(1)Kdn(1)Sulf(1) (S)', 'Hex(1)HexNAc(1)Kdn(1)Sulf(1)\
    \ (T)', 'Hex(1)HexNAc(1)NeuAc(1) (N)', 'Hex(1)HexNAc(1)NeuAc(1) (S)', 'Hex(1)HexNAc(1)NeuAc(1)\
    \ (T)', 'Hex(1)HexNAc(1)NeuAc(1)Ac(1) (S)', 'Hex(1)HexNAc(1)NeuAc(1)Ac(1) (T)',\
    \ 'Hex(1)HexNAc(1)NeuAc(1)NeuGc(1) (S)', 'Hex(1)HexNAc(1)NeuAc(1)NeuGc(1) (T)',\
    \ 'Hex(1)HexNAc(1)NeuAc(1)Sulf(1) (S)', 'Hex(1)HexNAc(1)NeuAc(1)Sulf(1) (T)',\
    \ 'Hex(1)HexNAc(1)NeuAc(2) (N)', 'Hex(1)HexNAc(1)NeuAc(2) (S)', 'Hex(1)HexNAc(1)NeuAc(2)\
    \ (T)', 'Hex(1)HexNAc(1)NeuAc(2)Ac(1) (S)', 'Hex(1)HexNAc(1)NeuAc(2)Ac(1) (T)',\
    \ 'Hex(1)HexNAc(1)NeuAc(2)Ac(2) (S)', 'Hex(1)HexNAc(1)NeuAc(2)Ac(2) (T)', 'Hex(1)HexNAc(1)NeuAc(3)\
    \ (S)', 'Hex(1)HexNAc(1)NeuAc(3) (T)', 'Hex(1)HexNAc(1)NeuGc(1) (S)', 'Hex(1)HexNAc(1)NeuGc(1)\
    \ (T)', 'Hex(1)HexNAc(1)NeuGc(2) (S)', 'Hex(1)HexNAc(1)NeuGc(2) (T)', 'Hex(1)HexNAc(1)NeuGc(3)\
    \ (S)', 'Hex(1)HexNAc(1)NeuGc(3) (T)', 'Hex(1)HexNAc(1)NeuGc(4) (S)', 'Hex(1)HexNAc(1)NeuGc(4)\
    \ (T)', 'Hex(1)HexNAc(1)NeuGc(5) (S)', 'Hex(1)HexNAc(1)NeuGc(5) (T)', 'Hex(1)HexNAc(1)Phos(1)\
    \ (S)', 'Hex(1)HexNAc(1)Phos(1) (T)', 'Hex(1)HexNAc(1)Sulf(1) (S)', 'Hex(1)HexNAc(1)Sulf(1)\
    \ (T)', 'Hex(1)HexNAc(2) (N)', 'Hex(1)HexNAc(2) (S)', 'Hex(1)HexNAc(2) (T)', 'Hex(1)HexNAc(2)dHex(1)\
    \ (N)', 'Hex(1)HexNAc(2)dHex(1) (S)', 'Hex(1)HexNAc(2)dHex(1) (T)', 'Hex(1)HexNAc(2)dHex(1)Pent(1)\
    \ (N)', 'Hex(1)HexNAc(2)dHex(2) (N)', 'Hex(1)HexNAc(2)dHex(2) (S)', 'Hex(1)HexNAc(2)dHex(2)\
    \ (T)', 'Hex(1)HexNAc(2)dHex(2)Sulf(1) (S)', 'Hex(1)HexNAc(2)dHex(2)Sulf(1) (T)',\
    \ 'Hex(1)HexNAc(2)NeuAc(1) (S)', 'Hex(1)HexNAc(2)NeuAc(1) (T)', 'Hex(1)HexNAc(2)NeuAc(1)Sulf(1)\
    \ (S)', 'Hex(1)HexNAc(2)NeuAc(1)Sulf(1) (T)', 'Hex(1)HexNAc(2)NeuAc(2) (S)', 'Hex(1)HexNAc(2)NeuAc(2)\
    \ (T)', 'Hex(1)HexNAc(2)NeuAc(2)Sulf(1) (S)', 'Hex(1)HexNAc(2)NeuAc(2)Sulf(1)\
    \ (T)', 'Hex(1)HexNAc(2)NeuGc(1) (S)', 'Hex(1)HexNAc(2)NeuGc(1) (T)', 'Hex(1)HexNAc(2)Pent(1)\
    \ (N)', 'Hex(1)HexNAc(2)Sulf(1) (S)', 'Hex(1)HexNAc(2)Sulf(1) (T)', 'Hex(1)HexNAc(3)\
    \ (S)', 'Hex(1)HexNAc(3) (T)', 'Hex(1)HexNAc(3)NeuAc(1) (S)', 'Hex(1)HexNAc(3)NeuAc(1)\
    \ (T)', 'Hex(1)HexNAc(3)NeuAc(2) (S)', 'Hex(1)HexNAc(3)NeuAc(2) (T)', 'Hex(1)HexNAc(3)NeuGc(1)\
    \ (S)', 'Hex(1)HexNAc(3)NeuGc(1) (T)', 'Hex(1)HexNAc(3)Sulf(1) (S)', 'Hex(1)HexNAc(3)Sulf(1)\
    \ (T)', 'Hex(1)HexNAc(4)dHex(1)Sulf(1) (S)', 'Hex(1)HexNAc(4)dHex(1)Sulf(1) (T)',\
    \ 'Hex(1)NeuAc(1) (S)', 'Hex(1)NeuAc(1) (T)', 'Hex(1)NeuAc(1)Pent(1) (S)', 'Hex(1)NeuAc(1)Pent(1)\
    \ (T)', 'Hex(1)NeuGc(1) (S)', 'Hex(1)NeuGc(1) (T)', 'Hex(1)Pent(1) (S)', 'Hex(1)Pent(1)\
    \ (T)', 'Hex(1)Pent(2) (S)', 'Hex(1)Pent(2) (T)', 'Hex(1)Pent(2)Me(1) (S)', 'Hex(1)Pent(2)Me(1)\
    \ (T)', 'Hex(1)Pent(3) (S)', 'Hex(1)Pent(3) (T)', 'Hex(1)Pent(3)Me(1) (S)', 'Hex(1)Pent(3)Me(1)\
    \ (T)', 'Hex(10)HexNAc(1) (N)', 'Hex(10)Phos(3) (S)', 'Hex(10)Phos(3) (T)', 'Hex(2)\
    \ (K)', 'Hex(2) (R)', 'Hex(2) (S)', 'Hex(2) (T)', 'Hex(2)HexA(1)HexNAc(1)Sulf(1)\
    \ (S)', 'Hex(2)HexA(1)HexNAc(1)Sulf(1) (T)', 'Hex(2)HexA(1)NeuAc(1)Pent(1)Sulf(1)\
    \ (S)', 'Hex(2)HexA(1)NeuAc(1)Pent(1)Sulf(1) (T)', 'Hex(2)HexA(1)Pent(1)Sulf(1)\
    \ (S)', 'Hex(2)HexA(1)Pent(1)Sulf(1) (T)', 'Hex(2)HexNAc(1) (N)', 'Hex(2)HexNAc(1)\
    \ (S)', 'Hex(2)HexNAc(1) (T)', 'Hex(2)HexNAc(1)Me(1) (S)', 'Hex(2)HexNAc(1)Me(1)\
    \ (T)', 'Hex(2)HexNAc(1)NeuGc(1) (S)', 'Hex(2)HexNAc(1)NeuGc(1) (T)', 'Hex(2)HexNAc(1)NeuGc(2)\
    \ (S)', 'Hex(2)HexNAc(1)NeuGc(2) (T)', 'Hex(2)HexNAc(1)NeuGc(3) (S)', 'Hex(2)HexNAc(1)NeuGc(3)\
    \ (T)', 'Hex(2)HexNAc(1)NeuGc(4) (S)', 'Hex(2)HexNAc(1)NeuGc(4) (T)', 'Hex(2)HexNAc(1)Pent(1)HexA(1)\
    \ (S)', 'Hex(2)HexNAc(1)Pent(1)HexA(1) (T)', 'Hex(2)HexNAc(1)Sulf(1) (S)', 'Hex(2)HexNAc(1)Sulf(1)\
    \ (T)', 'Hex(2)HexNAc(2) (N)', 'Hex(2)HexNAc(2) (S)', 'Hex(2)HexNAc(2) (T)', 'Hex(2)HexNAc(2)dHex(1)\
    \ (N)', 'Hex(2)HexNAc(2)dHex(1) (S)', 'Hex(2)HexNAc(2)dHex(1) (T)', 'Hex(2)HexNAc(2)NeuAc(1)\
    \ (N)', 'Hex(2)HexNAc(2)NeuAc(1) (S)', 'Hex(2)HexNAc(2)NeuAc(1) (T)', 'Hex(2)HexNAc(2)NeuAc(1)Sulf(1)\
    \ (S)', 'Hex(2)HexNAc(2)NeuAc(1)Sulf(1) (T)', 'Hex(2)HexNAc(2)NeuAc(2) (S)', 'Hex(2)HexNAc(2)NeuAc(2)\
    \ (T)', 'Hex(2)HexNAc(2)NeuAc(2)Sulf(1) (S)', 'Hex(2)HexNAc(2)NeuAc(2)Sulf(1)\
    \ (T)', 'Hex(2)HexNAc(2)NeuGc(1) (S)', 'Hex(2)HexNAc(2)NeuGc(1) (T)', 'Hex(2)HexNAc(2)Pent(1)\
    \ (N)', 'Hex(2)HexNAc(2)Sulf(1) (S)', 'Hex(2)HexNAc(2)Sulf(1) (T)', 'Hex(2)HexNAc(3)\
    \ (N)', 'Hex(2)HexNAc(3) (S)', 'Hex(2)HexNAc(3) (T)', 'Hex(2)HexNAc(3)NeuAc(1)NeuGc(1)\
    \ (S)', 'Hex(2)HexNAc(3)NeuAc(1)NeuGc(1) (T)', 'Hex(2)HexNAc(3)NeuAc(1)Sulf(1)\
    \ (S)', 'Hex(2)HexNAc(3)NeuAc(1)Sulf(1) (T)', 'Hex(2)HexNAc(3)NeuAc(2) (S)', 'Hex(2)HexNAc(3)NeuAc(2)\
    \ (T)', 'Hex(2)HexNAc(3)NeuAc(3) (S)', 'Hex(2)HexNAc(3)NeuAc(3) (T)', 'Hex(2)HexNAc(3)NeuGc(1)\
    \ (S)', 'Hex(2)HexNAc(3)NeuGc(1) (T)', 'Hex(2)HexNAc(3)NeuGc(2) (S)', 'Hex(2)HexNAc(3)NeuGc(2)\
    \ (T)', 'Hex(2)HexNAc(3)NeuGc(3) (S)', 'Hex(2)HexNAc(3)NeuGc(3) (T)', 'Hex(2)HexNAc(3)Sulf(1)\
    \ (S)', 'Hex(2)HexNAc(3)Sulf(1) (T)', 'Hex(2)HexNAc(4) (N)', 'Hex(2)HexNAc(4)\
    \ (S)', 'Hex(2)HexNAc(4) (T)', 'Hex(2)HexNAc(4)NeuAc(1) (S)', 'Hex(2)HexNAc(4)NeuAc(1)\
    \ (T)', 'Hex(2)HexNAc(5) (S)', 'Hex(2)HexNAc(5) (T)', 'Hex(2)NeuAc(1) (S)', 'Hex(2)NeuAc(1)\
    \ (T)', 'Hex(2)Pent(2) (S)', 'Hex(2)Pent(2) (T)', 'Hex(2)Pent(2)Me(1) (S)', 'Hex(2)Pent(2)Me(1)\
    \ (T)', 'Hex(2)Sulf(1) (S)', 'Hex(2)Sulf(1) (T)', 'Hex(3) (N)', 'Hex(3) (S)',\
    \ 'Hex(3) (T)', 'Hex(3)HexNAc(1) (N)', 'Hex(3)HexNAc(1) (S)', 'Hex(3)HexNAc(1)\
    \ (T)', 'Hex(3)HexNAc(1)HexA(1) (S)', 'Hex(3)HexNAc(1)HexA(1) (T)', 'Hex(3)HexNAc(1)Me(1)\
    \ (S)', 'Hex(3)HexNAc(1)Me(1) (T)', 'Hex(3)HexNAc(1)Pent(1) (N)', 'Hex(3)HexNAc(2)\
    \ (N)', 'Hex(3)HexNAc(2) (S)', 'Hex(3)HexNAc(2) (T)', 'Hex(3)HexNAc(2)NeuAc(1)\
    \ (N)', 'Hex(3)HexNAc(2)NeuAc(2) (S)', 'Hex(3)HexNAc(2)NeuAc(2) (T)', 'Hex(3)HexNAc(2)Pent(1)\
    \ (N)', 'Hex(3)HexNAc(2)Phos(1) (N)', 'Hex(3)HexNAc(3) (N)', 'Hex(3)HexNAc(3)\
    \ (S)', 'Hex(3)HexNAc(3) (T)', 'Hex(3)HexNAc(3)NeuAc(1) (S)', 'Hex(3)HexNAc(3)NeuAc(1)\
    \ (T)', 'Hex(3)HexNAc(3)NeuAc(1)Sulf(1) (S)', 'Hex(3)HexNAc(3)NeuAc(1)Sulf(1)\
    \ (T)', 'Hex(3)HexNAc(3)NeuAc(2) (S)', 'Hex(3)HexNAc(3)NeuAc(2) (T)', 'Hex(3)HexNAc(3)NeuAc(2)Sulf(1)\
    \ (S)', 'Hex(3)HexNAc(3)NeuAc(2)Sulf(1) (T)', 'Hex(3)HexNAc(3)NeuAc(3) (S)', 'Hex(3)HexNAc(3)NeuAc(3)\
    \ (T)', 'Hex(3)HexNAc(3)NeuGc(1) (S)', 'Hex(3)HexNAc(3)NeuGc(1) (T)', 'Hex(3)HexNAc(3)NeuGc(1)Sulf(1)\
    \ (S)', 'Hex(3)HexNAc(3)NeuGc(1)Sulf(1) (T)', 'Hex(3)HexNAc(3)Pent(1) (N)', 'Hex(3)HexNAc(3)Sulf(1)\
    \ (N)', 'Hex(3)HexNAc(3)Sulf(1) (S)', 'Hex(3)HexNAc(3)Sulf(1) (T)', 'Hex(3)HexNAc(4)\
    \ (N)', 'Hex(3)HexNAc(4) (S)', 'Hex(3)HexNAc(4) (T)', 'Hex(3)HexNAc(4)NeuAc(1)\
    \ (N)', 'Hex(3)HexNAc(4)NeuAc(2) (N)', 'Hex(3)HexNAc(4)Pent(1) (N)', 'Hex(3)HexNAc(4)Sulf(1)\
    \ (N)', 'Hex(3)HexNAc(5) (N)', 'Hex(3)HexNAc(5) (S)', 'Hex(3)HexNAc(5) (T)', 'Hex(3)HexNAc(5)NeuAc(1)\
    \ (N)', 'Hex(3)HexNAc(5)Sulf(1) (N)', 'Hex(3)HexNAc(6) (N)', 'Hex(3)HexNAc(6)\
    \ (S)', 'Hex(3)HexNAc(6) (T)', 'Hex(3)HexNAc(6)NeuAc(1) (N)', 'Hex(3)HexNAc(6)Sulf(1)\
    \ (N)', 'Hex(3)HexNAc(6)Sulf(2) (N)', 'Hex(3)HexNAc(7) (N)', 'Hex(3)HexNAc(7)Sulf(1)\
    \ (N)', 'Hex(4) (S)', 'Hex(4) (T)', 'Hex(4)HexA(1) (S)', 'Hex(4)HexA(1) (T)',\
    \ 'Hex(4)HexA(1)HexNAc(1) (S)', 'Hex(4)HexA(1)HexNAc(1) (T)', 'Hex(4)HexNAc(1)\
    \ (N)', 'Hex(4)HexNAc(1) (S)', 'Hex(4)HexNAc(1) (T)', 'Hex(4)HexNAc(2) (N)', 'Hex(4)HexNAc(2)NeuAc(1)\
    \ (N)', 'Hex(4)HexNAc(2)NeuAc(1) (S)', 'Hex(4)HexNAc(2)NeuAc(1) (T)', 'Hex(4)HexNAc(2)Pent(1)\
    \ (N)', 'Hex(4)HexNAc(3) (N)', 'Hex(4)HexNAc(3) (S)', 'Hex(4)HexNAc(3) (T)', 'Hex(4)HexNAc(3)NeuAc(1)\
    \ (N)', 'Hex(4)HexNAc(3)NeuAc(1) (S)', 'Hex(4)HexNAc(3)NeuAc(1) (T)', 'Hex(4)HexNAc(3)NeuAc(2)\
    \ (N)', 'Hex(4)HexNAc(3)NeuGc(1) (N)', 'Hex(4)HexNAc(3)Pent(1) (N)', 'Hex(4)HexNAc(4)\
    \ (N)', 'Hex(4)HexNAc(4) (S)', 'Hex(4)HexNAc(4) (T)', 'Hex(4)HexNAc(4)Me(2)Pent(1)\
    \ (N)', 'Hex(4)HexNAc(4)NeuAc(1) (N)', 'Hex(4)HexNAc(4)NeuAc(1) (S)', 'Hex(4)HexNAc(4)NeuAc(1)\
    \ (T)', 'Hex(4)HexNAc(4)NeuAc(1)Sulf(2) (S)', 'Hex(4)HexNAc(4)NeuAc(1)Sulf(2)\
    \ (T)', 'Hex(4)HexNAc(4)NeuAc(1)Sulf(3) (S)', 'Hex(4)HexNAc(4)NeuAc(1)Sulf(3)\
    \ (T)', 'Hex(4)HexNAc(4)NeuGc(1) (N)', 'Hex(4)HexNAc(4)NeuGc(1) (S)', 'Hex(4)HexNAc(4)NeuGc(1)\
    \ (T)', 'Hex(4)HexNAc(4)NeuGc(1)Sulf(2) (S)', 'Hex(4)HexNAc(4)NeuGc(1)Sulf(2)\
    \ (T)', 'Hex(4)HexNAc(4)Pent(1) (N)', 'Hex(4)HexNAc(4)Sulf(1) (N)', 'Hex(4)HexNAc(4)Sulf(2)\
    \ (S)', 'Hex(4)HexNAc(4)Sulf(2) (T)', 'Hex(4)HexNAc(5) (N)', 'Hex(4)HexNAc(5)NeuAc(1)\
    \ (N)', 'Hex(4)HexNAc(5)Sulf(1) (N)', 'Hex(4)HexNAc(6) (N)', 'Hex(4)Phos(1) (S)',\
    \ 'Hex(4)Phos(1) (T)', 'Hex(5) (S)', 'Hex(5) (T)', 'Hex(5)HexA(1) (S)', 'Hex(5)HexA(1)\
    \ (T)', 'Hex(5)HexNAc(1) (N)', 'Hex(5)HexNAc(1) (S)', 'Hex(5)HexNAc(1) (T)', 'Hex(5)HexNAc(2)\
    \ (N)', 'Hex(5)HexNAc(2)Phos(1) (N)', 'Hex(5)HexNAc(3) (N)', 'Hex(5)HexNAc(3)Pent(1)\
    \ (N)', 'Hex(5)HexNAc(4) (N)', 'Hex(5)HexNAc(4) (S)', 'Hex(5)HexNAc(4) (T)', 'Hex(5)HexNAc(4)Me(2)Pent(1)\
    \ (N)', 'Hex(5)HexNAc(4)NeuAc(1) (N)', 'Hex(5)HexNAc(4)NeuAc(1)Ac(1) (N)', 'Hex(5)HexNAc(4)NeuAc(1)Ac(2)\
    \ (N)', 'Hex(5)HexNAc(4)NeuAc(1)Sulf(1) (N)', 'Hex(5)HexNAc(4)NeuAc(2) (N)', 'Hex(5)HexNAc(4)NeuGc(1)\
    \ (N)', 'Hex(5)HexNAc(4)Sulf(1) (N)', 'Hex(5)HexNAc(5) (N)', 'Hex(5)HexNAc(5)\
    \ (S)', 'Hex(5)HexNAc(5) (T)', 'Hex(5)Phos(1) (S)', 'Hex(5)Phos(1) (T)', 'Hex(5)Phos(3)\
    \ (S)', 'Hex(5)Phos(3) (T)', 'Hex(6)HexNAc(1) (N)', 'Hex(6)HexNAc(2) (N)', 'Hex(6)HexNAc(2)Phos(1)\
    \ (N)', 'Hex(6)HexNAc(3) (N)', 'Hex(6)HexNAc(3)Phos(1) (N)', 'Hex(6)HexNAc(4)\
    \ (N)', 'Hex(6)HexNAc(4) (S)', 'Hex(6)HexNAc(4) (T)', 'Hex(6)HexNAc(4)Me(3) (N)',\
    \ 'Hex(6)HexNAc(4)Me(3)Pent(1) (N)', 'Hex(6)HexNAc(5) (N)', 'Hex(6)Phos(1) (S)',\
    \ 'Hex(6)Phos(1) (T)', 'Hex(6)Phos(3) (S)', 'Hex(6)Phos(3) (T)', 'Hex(7)HexNAc(1)\
    \ (N)', 'Hex(7)HexNAc(2) (N)', 'Hex(7)HexNAc(2)Phos(1) (N)', 'Hex(7)HexNAc(2)Phos(2)\
    \ (N)', 'Hex(7)HexNAc(3) (N)', 'Hex(7)HexNAc(3)Phos(1) (N)', 'Hex(7)HexNAc(4)\
    \ (N)', 'Hex(7)Phos(3) (S)', 'Hex(7)Phos(3) (T)', 'Hex(8)HexNAc(1) (N)', 'Hex(8)HexNAc(2)\
    \ (N)', 'Hex(8)Phos(3) (S)', 'Hex(8)Phos(3) (T)', 'Hex(9) (N)', 'Hex(9)HexNAc(1)\
    \ (N)', 'Hex(9)HexNAc(2) (N)', 'Hex(9)Phos(3) (S)', 'Hex(9)Phos(3) (T)', 'HexA(2)HexNAc(3)\
    \ (S)', 'HexA(2)HexNAc(3) (T)', 'HexN (K)', 'HexN (N)', 'HexN (S)', 'HexN (T)',\
    \ 'HexN (W)', 'HexNAc (C)', 'HexNAc (N)', 'HexNAc (S)', 'HexNAc (T)', 'HexNAc(1)dHex(1)\
    \ (N)', 'HexNAc(1)dHex(1) (S)', 'HexNAc(1)dHex(1) (T)', 'HexNAc(1)dHex(2) (N)',\
    \ 'HexNAc(1)Kdn(2) (S)', 'HexNAc(1)Kdn(2) (T)', 'HexNAc(1)NeuAc(1) (S)', 'HexNAc(1)NeuAc(1)\
    \ (T)', 'HexNAc(1)NeuGc(1) (S)', 'HexNAc(1)NeuGc(1) (T)', 'HexNAc(1)NeuGc(2) (S)',\
    \ 'HexNAc(1)NeuGc(2) (T)', 'HexNAc(2) (N)', 'HexNAc(2) (S)', 'HexNAc(2) (T)',\
    \ 'HexNAc(2)dHex(1) (N)', 'HexNAc(2)dHex(2) (N)', 'HexNAc(2)NeuAc(1) (S)', 'HexNAc(2)NeuAc(1)\
    \ (T)', 'HexNAc(2)NeuAc(1)Sulf(1) (S)', 'HexNAc(2)NeuAc(1)Sulf(1) (T)', 'HexNAc(2)NeuGc(1)\
    \ (S)', 'HexNAc(2)NeuGc(1) (T)', 'HexNAc(2)Sulf(1) (S)', 'HexNAc(2)Sulf(1) (T)',\
    \ 'HexNAc(3) (S)', 'HexNAc(3) (T)', 'HexNAc(3)Sulf(1) (S)', 'HexNAc(3)Sulf(1)\
    \ (T)', 'HexNAc(4) (S)', 'HexNAc(4) (T)', 'HexNAc(5) (S)', 'HexNAc(5) (T)', 'His->Ala\
    \ (H)', 'His->Arg (H)', 'His->Asn (H)', 'His->Asp (H)', 'His->Cys (H)', 'His->Gln\
    \ (H)', 'His->Glu (H)', 'His->Gly (H)', 'His->Lys (H)', 'His->Met (H)', 'His->Phe\
    \ (H)', 'His->Pro (H)', 'His->Ser (H)', 'His->Thr (H)', 'His->Trp (H)', 'His->Tyr\
    \ (H)', 'His->Val (H)', 'His->Xle (H)', 'HMVK (C)', 'HN2_mustard (C)', 'HN2_mustard\
    \ (H)', 'HN2_mustard (K)', 'HN3_mustard (C)', 'HN3_mustard (H)', 'HN3_mustard\
    \ (K)', 'HNE (A)', 'HNE (C)', 'HNE (H)', 'HNE (K)', 'HNE (L)', 'HNE+Delta:H(2)\
    \ (C)', 'HNE+Delta:H(2) (H)', 'HNE+Delta:H(2) (K)', 'HNE-BAHAH (C)', 'HNE-BAHAH\
    \ (H)', 'HNE-BAHAH (K)', 'HNE-Delta:H(2)O (C)', 'HNE-Delta:H(2)O (H)', 'HNE-Delta:H(2)O\
    \ (K)', 'Homocysteic_acid (M)', 'HPG (R)', 'Hydroxamic_acid (D)', 'Hydroxamic_acid\
    \ (E)', 'Hydroxycinnamyl (C)', 'Hydroxyfarnesyl (C)', 'Hydroxyheme (E)', 'hydroxyisobutyryl\
    \ (K)', 'Hydroxymethyl (N)', 'HydroxymethylOP (K)', 'Hydroxytrimethyl (K)', 'Hypusine\
    \ (K)', 'IASD (C)', 'IBTP (C)', 'ICAT-C (C)', 'ICAT-C:13C(9) (C)', 'ICAT-D (C)',\
    \ 'ICAT-D:2H(8) (C)', 'ICAT-G (C)', 'ICAT-G:2H(8) (C)', 'ICAT-H (C)', 'ICAT-H:13C(6)\
    \ (C)', 'ICDID (C)', 'ICDID:2H(6) (C)', 'ICPL (K)', 'ICPL (N-term)', 'ICPL (Protein\
    \ N-term)', 'ICPL:13C(6) (K)', 'ICPL:13C(6) (N-term)', 'ICPL:13C(6) (Protein N-term)',\
    \ 'ICPL:13C(6)2H(4) (K)', 'ICPL:13C(6)2H(4) (N-term)', 'ICPL:13C(6)2H(4) (Protein\
    \ N-term)', 'ICPL:2H(4) (K)', 'ICPL:2H(4) (N-term)', 'ICPL:2H(4) (Protein N-term)',\
    \ 'IDEnT (C)', 'IED-Biotin (C)', 'IGBP (C)', 'IGBP:13C(2) (C)', 'IMEHex(2)NeuAc(1)\
    \ (K)', 'IMID (K)', 'IMID:2H(4) (K)', 'Iminobiotin (K)', 'Iminobiotin (N-term)',\
    \ 'Iodo (H)', 'Iodo (Y)', 'Iodoacetanilide (C)', 'Iodoacetanilide (K)', 'Iodoacetanilide\
    \ (N-term)', 'Iodoacetanilide:13C(6) (C)', 'Iodoacetanilide:13C(6) (K)', 'Iodoacetanilide:13C(6)\
    \ (N-term)', 'iodoTMT (C)', 'iodoTMT (D)', 'iodoTMT (E)', 'iodoTMT (H)', 'iodoTMT\
    \ (K)', 'iodoTMT6plex (C)', 'iodoTMT6plex (D)', 'iodoTMT6plex (E)', 'iodoTMT6plex\
    \ (H)', 'iodoTMT6plex (K)', 'IodoU-AMP (F)', 'IodoU-AMP (W)', 'IodoU-AMP (Y)',\
    \ 'ISD_z+2_ion (N-term)', 'Isopropylphospho (S)', 'Isopropylphospho (T)', 'Isopropylphospho\
    \ (Y)', 'iTRAQ4plex (C)', 'iTRAQ4plex (H)', 'iTRAQ4plex (K)', 'iTRAQ4plex (N-term)',\
    \ 'iTRAQ4plex (Protein N-term)', 'iTRAQ4plex (S)', 'iTRAQ4plex (T)', 'iTRAQ4plex\
    \ (Y)', 'iTRAQ4plex114 (C)', 'iTRAQ4plex114 (K)', 'iTRAQ4plex114 (N-term)', 'iTRAQ4plex114\
    \ (Y)', 'iTRAQ4plex115 (C)', 'iTRAQ4plex115 (K)', 'iTRAQ4plex115 (N-term)', 'iTRAQ4plex115\
    \ (Y)', 'iTRAQ8plex (C)', 'iTRAQ8plex (H)', 'iTRAQ8plex (K)', 'iTRAQ8plex (N-term)',\
    \ 'iTRAQ8plex (Protein N-term)', 'iTRAQ8plex (S)', 'iTRAQ8plex (T)', 'iTRAQ8plex\
    \ (Y)', 'iTRAQ8plex:13C(6)15N(2) (C)', 'iTRAQ8plex:13C(6)15N(2) (K)', 'iTRAQ8plex:13C(6)15N(2)\
    \ (N-term)', 'iTRAQ8plex:13C(6)15N(2) (Y)', 'Label:13C(1)2H(3) (M)', 'Label:13C(1)2H(3)+Oxidation\
    \ (M)', 'Label:13C(2)15N(2) (K)', 'Label:13C(3) (A)', 'Label:13C(3)15N(1) (A)',\
    \ 'Label:13C(4) (M)', 'Label:13C(4)+Oxidation (M)', 'Label:13C(4)15N(1) (D)',\
    \ 'Label:13C(4)15N(2)+GG (K)', 'Label:13C(5) (P)', 'Label:13C(5)15N(1) (E)', 'Label:13C(5)15N(1)\
    \ (M)', 'Label:13C(5)15N(1) (P)', 'Label:13C(5)15N(1) (V)', 'Label:13C(6) (I)',\
    \ 'Label:13C(6) (K)', 'Label:13C(6) (L)', 'Label:13C(6) (R)', 'Label:13C(6)+Acetyl\
    \ (K)', 'Label:13C(6)+Dimethyl (K)', 'Label:13C(6)+GG (K)', 'Label:13C(6)15N(1)\
    \ (I)', 'Label:13C(6)15N(1) (L)', 'Label:13C(6)15N(2) (K)', 'Label:13C(6)15N(2)+Acetyl\
    \ (K)', 'Label:13C(6)15N(2)+Dimethyl (K)', 'Label:13C(6)15N(2)+GG (K)', 'Label:13C(6)15N(4)\
    \ (R)', 'Label:13C(6)15N(4)+Dimethyl (R)', 'Label:13C(6)15N(4)+Dimethyl:2H(6)13C(2)\
    \ (R)', 'Label:13C(6)15N(4)+Methyl (R)', 'Label:13C(6)15N(4)+Methyl:2H(3)13C(1)\
    \ (R)', 'Label:13C(9) (F)', 'Label:13C(9) (Y)', 'Label:13C(9)+Phospho (Y)', 'Label:13C(9)15N(1)\
    \ (F)', 'Label:15N(1) (A)', 'Label:15N(1) (C)', 'Label:15N(1) (D)', 'Label:15N(1)\
    \ (E)', 'Label:15N(1) (F)', 'Label:15N(1) (G)', 'Label:15N(1) (I)', 'Label:15N(1)\
    \ (L)', 'Label:15N(1) (M)', 'Label:15N(1) (P)', 'Label:15N(1) (S)', 'Label:15N(1)\
    \ (T)', 'Label:15N(1) (V)', 'Label:15N(1) (Y)', 'Label:15N(2) (K)', 'Label:15N(2)\
    \ (N)', 'Label:15N(2) (Q)', 'Label:15N(2) (W)', 'Label:15N(2)2H(9) (K)', 'Label:15N(3)\
    \ (H)', 'Label:15N(4) (R)', 'Label:18O(1) (C-term)', 'Label:18O(1) (S)', 'Label:18O(1)\
    \ (T)', 'Label:18O(1) (Y)', 'Label:18O(2) (C-term)', 'Label:2H(10) (L)', 'Label:2H(3)\
    \ (L)', 'Label:2H(3) (M)', 'Label:2H(3)+Oxidation (M)', 'Label:2H(4) (A)', 'Label:2H(4)\
    \ (F)', 'Label:2H(4) (K)', 'Label:2H(4) (U)', 'Label:2H(4) (Y)', 'Label:2H(4)+Acetyl\
    \ (K)', 'Label:2H(4)+GG (K)', 'Label:2H(4)13C(1) (R)', 'Label:2H(6)15N(1) (P)',\
    \ 'Label:2H(7)15N(4) (R)', 'Label:2H(9)13C(6)15N(2) (K)', 'lapachenole (C)', 'Leu->MetOx\
    \ (L)', 'LG-anhydrolactam (K)', 'LG-anhydrolactam (N-term)', 'LG-anhyropyrrole\
    \ (K)', 'LG-anhyropyrrole (N-term)', 'LG-Hlactam-K (K)', 'LG-Hlactam-K (Protein\
    \ N-term)', 'LG-Hlactam-R (R)', 'LG-lactam-K (K)', 'LG-lactam-K (Protein N-term)',\
    \ 'LG-lactam-R (R)', 'LG-pyrrole (K)', 'LG-pyrrole (N-term)', 'Lipoyl (K)', 'LRGG\
    \ (K)', 'LRGG+dimethyl (K)', 'LRGG+methyl (K)', 'Lys (N-term)', 'Lys->Ala (K)',\
    \ 'Lys->Allysine (K)', 'Lys->AminoadipicAcid (K)', 'Lys->Arg (K)', 'Lys->Asn (K)',\
    \ 'Lys->Asp (K)', 'Lys->CamCys (K)', 'Lys->Cys (K)', 'Lys->Gln (K)', 'Lys->Glu\
    \ (K)', 'Lys->Gly (K)', 'Lys->His (K)', 'Lys->Met (K)', 'Lys->MetOx (K)', 'Lys->Phe\
    \ (K)', 'Lys->Pro (K)', 'Lys->Ser (K)', 'Lys->Thr (K)', 'Lys->Trp (K)', 'Lys->Tyr\
    \ (K)', 'Lys->Val (K)', 'Lys->Xle (K)', 'Lys-loss (Protein C-term K)', 'Lysbiotinhydrazide\
    \ (K)', 'maleimide (C)', 'maleimide (K)', 'Maleimide-PEO2-Biotin (C)', 'maleimide3\
    \ (C)', 'maleimide3 (K)', 'maleimide5 (C)', 'maleimide5 (K)', 'Malonyl (C)', 'Malonyl\
    \ (K)', 'Malonyl (S)', 'MDCC (C)', 'MeMePhosphorothioate (S)', 'Menadione (C)',\
    \ 'Menadione (K)', 'Menadione-HQ (C)', 'Menadione-HQ (K)', 'MercaptoEthanol (S)',\
    \ 'MercaptoEthanol (T)', 'MesitylOxide (H)', 'MesitylOxide (K)', 'MesitylOxide\
    \ (Protein N-term)', 'Met->Aha (M)', 'Met->Ala (M)', 'Met->Arg (M)', 'Met->Asn\
    \ (M)', 'Met->Asp (M)', 'Met->AspSA (M)', 'Met->Cys (M)', 'Met->Gln (M)', 'Met->Glu\
    \ (M)', 'Met->Gly (M)', 'Met->His (M)', 'Met->Hpg (M)', 'Met->Hse (C-term M)',\
    \ 'Met->Hsl (C-term M)', 'Met->Lys (M)', 'Met->Phe (M)', 'Met->Pro (M)', 'Met->Ser\
    \ (M)', 'Met->Thr (M)', 'Met->Trp (M)', 'Met->Tyr (M)', 'Met->Val (M)', 'Met->Xle\
    \ (M)', 'Met-loss (Protein N-term M)', 'Met-loss+Acetyl (Protein N-term M)', 'Methamidophos-O\
    \ (C)', 'Methamidophos-O (H)', 'Methamidophos-O (K)', 'Methamidophos-O (S)', 'Methamidophos-O\
    \ (T)', 'Methamidophos-O (Y)', 'Methamidophos-S (C)', 'Methamidophos-S (H)', 'Methamidophos-S\
    \ (K)', 'Methamidophos-S (S)', 'Methamidophos-S (T)', 'Methamidophos-S (Y)', 'Methyl\
    \ (C)', 'Methyl (C-term)', 'Methyl (D)', 'Methyl (E)', 'Methyl (H)', 'Methyl (I)',\
    \ 'Methyl (K)', 'Methyl (L)', 'Methyl (N)', 'Methyl (N-term)', 'Methyl (Protein\
    \ N-term)', 'Methyl (Q)', 'Methyl (R)', 'Methyl (S)', 'Methyl (T)', 'Methyl+Acetyl:2H(3)\
    \ (K)', 'Methyl+Deamidated (N)', 'Methyl+Deamidated (Q)', 'Methyl-PEO12-Maleimide\
    \ (C)', 'Methyl:2H(2) (K)', 'Methyl:2H(2) (N-term)', 'Methyl:2H(2)13C (C)', 'Methyl:2H(2)13C\
    \ (C-term)', 'Methyl:2H(2)13C (D)', 'Methyl:2H(2)13C (E)', 'Methyl:2H(2)13C (H)',\
    \ 'Methyl:2H(2)13C (I)', 'Methyl:2H(2)13C (K)', 'Methyl:2H(2)13C (L)', 'Methyl:2H(2)13C\
    \ (N)', 'Methyl:2H(2)13C (N-term)', 'Methyl:2H(2)13C (Protein N-term)', 'Methyl:2H(2)13C\
    \ (Q)', 'Methyl:2H(2)13C (R)', 'Methyl:2H(2)13C (S)', 'Methyl:2H(2)13C (T)', 'Methyl:2H(3)\
    \ (D)', 'Methyl:2H(3) (E)', 'Methyl:2H(3) (K)', 'Methyl:2H(3) (R)', 'Methyl:2H(3)\
    \ (X)', 'Methyl:2H(3)+Acetyl:2H(3) (K)', 'Methyl:2H(3)13C(1) (K)', 'Methyl:2H(3)13C(1)\
    \ (N-term)', 'Methyl:2H(3)13C(1) (R)', 'Methylamine (S)', 'Methylamine (T)', 'Methylmalonylation\
    \ (S)', 'methylol (K)', 'methylol (W)', 'methylol (Y)', 'Methylphosphonate (S)',\
    \ 'Methylphosphonate (T)', 'Methylphosphonate (Y)', 'Methylpyrroline (K)', 'methylsulfonylethyl\
    \ (C)', 'methylsulfonylethyl (H)', 'methylsulfonylethyl (K)', 'Methylthio (C)',\
    \ 'Methylthio (D)', 'Methylthio (K)', 'Methylthio (N)', 'Methylthio (N-term)',\
    \ 'MG-H1 (R)', 'Microcin (Protein C-term)', 'MicrocinC7 (Protein C-term)', 'MM-diphenylpentanone\
    \ (C)', 'Molybdopterin (C)', 'MolybdopterinGD (C)', 'MolybdopterinGD (D)', 'MolybdopterinGD\
    \ (U)', 'MolybdopterinGD+Delta:S(-1)Se(1) (C)', 'monomethylphosphothione (C)',\
    \ 'monomethylphosphothione (H)', 'monomethylphosphothione (K)', 'monomethylphosphothione\
    \ (S)', 'monomethylphosphothione (T)', 'monomethylphosphothione (Y)', 'mTRAQ (H)',\
    \ 'mTRAQ (K)', 'mTRAQ (N-term)', 'mTRAQ (S)', 'mTRAQ (T)', 'mTRAQ (Y)', 'mTRAQ:13C(3)15N(1)\
    \ (H)', 'mTRAQ:13C(3)15N(1) (K)', 'mTRAQ:13C(3)15N(1) (N-term)', 'mTRAQ:13C(3)15N(1)\
    \ (S)', 'mTRAQ:13C(3)15N(1) (T)', 'mTRAQ:13C(3)15N(1) (Y)', 'mTRAQ:13C(6)15N(2)\
    \ (H)', 'mTRAQ:13C(6)15N(2) (K)', 'mTRAQ:13C(6)15N(2) (N-term)', 'mTRAQ:13C(6)15N(2)\
    \ (S)', 'mTRAQ:13C(6)15N(2) (T)', 'mTRAQ:13C(6)15N(2) (Y)', 'MTSL (C)', 'MurNAc\
    \ (A)', 'Myristoleyl (Protein N-term G)', 'Myristoyl (C)', 'Myristoyl (K)', 'Myristoyl\
    \ (N-term G)', 'Myristoyl+Delta:H(-4) (Protein N-term G)', 'N-dimethylphosphate\
    \ (S)', 'NA-LNO2 (C)', 'NA-LNO2 (H)', 'NA-OA-NO2 (C)', 'NA-OA-NO2 (H)', 'NBS (W)',\
    \ 'NBS:13C(6) (W)', 'NDA (K)', 'NDA (N-term)', 'NEIAA (C)', 'NEIAA (Y)', 'NEIAA:2H(5)\
    \ (C)', 'NEIAA:2H(5) (Y)', 'NEM:2H(5) (C)', 'NEM:2H(5)+H2O (C)', 'NEMsulfur (C)',\
    \ 'NEMsulfurWater (C)', 'Nethylmaleimide (C)', 'Nethylmaleimide+water (C)', 'Nethylmaleimide+water\
    \ (K)', 'NeuAc (N)', 'NeuAc (S)', 'NeuAc (T)', 'NeuGc (N)', 'NeuGc (S)', 'NeuGc\
    \ (T)', 'NHS-fluorescein (K)', 'NHS-LC-Biotin (K)', 'NHS-LC-Biotin (N-term)',\
    \ 'NIC (K)', 'NIC (N-term)', 'NIPCAM (C)', 'Nitrene (Y)', 'Nitro (F)', 'Nitro\
    \ (W)', 'Nitro (Y)', 'Nitrosyl (C)', 'Nitrosyl (Y)', 'Nmethylmaleimide (C)', 'Nmethylmaleimide\
    \ (K)', 'Nmethylmaleimide+water (C)', 'NO_SMX_SEMD (C)', 'NO_SMX_SIMD (C)', 'NO_SMX_SMCT\
    \ (C)', 'NP40 (N-term)', 'NQIGG (K)', 'O-Dimethylphosphate (S)', 'O-Dimethylphosphate\
    \ (T)', 'O-Dimethylphosphate (Y)', 'O-Et-N-diMePhospho (S)', 'O-Isopropylmethylphosphonate\
    \ (S)', 'O-Isopropylmethylphosphonate (T)', 'O-Isopropylmethylphosphonate (Y)',\
    \ 'O-Methylphosphate (S)', 'O-Methylphosphate (T)', 'O-Methylphosphate (Y)', 'O-pinacolylmethylphosphonate\
    \ (H)', 'O-pinacolylmethylphosphonate (K)', 'O-pinacolylmethylphosphonate (S)',\
    \ 'O-pinacolylmethylphosphonate (T)', 'O-pinacolylmethylphosphonate (Y)', 'Octanoyl\
    \ (C)', 'Octanoyl (S)', 'Octanoyl (T)', 'OxArgBiotin (R)', 'OxArgBiotinRed (R)',\
    \ 'Oxidation (C)', 'Oxidation (C-term G)', 'Oxidation (D)', 'Oxidation (E)', 'Oxidation\
    \ (F)', 'Oxidation (H)', 'Oxidation (I)', 'Oxidation (K)', 'Oxidation (L)', 'Oxidation\
    \ (M)', 'Oxidation (N)', 'Oxidation (P)', 'Oxidation (Q)', 'Oxidation (R)', 'Oxidation\
    \ (S)', 'Oxidation (T)', 'Oxidation (U)', 'Oxidation (V)', 'Oxidation (W)', 'Oxidation\
    \ (Y)', 'Oxidation+NEM (C)', 'OxLysBiotin (K)', 'OxLysBiotinRed (K)', 'OxProBiotin\
    \ (P)', 'OxProBiotinRed (P)', 'Palmitoleyl (C)', 'Palmitoleyl (S)', 'Palmitoleyl\
    \ (T)', 'Palmitoyl (C)', 'Palmitoyl (K)', 'Palmitoyl (Protein N-term)', 'Palmitoyl\
    \ (S)', 'Palmitoyl (T)', 'PEITC (C)', 'PEITC (K)', 'PEITC (N-term)', 'Pent(1)HexNAc(1)\
    \ (S)', 'Pent(1)HexNAc(1) (T)', 'Pent(2) (S)', 'Pent(2) (T)', 'Pentose (S)', 'Pentose\
    \ (T)', 'Pentylamine (Q)', 'PEO-Iodoacetyl-LC-Biotin (C)', 'PET (S)', 'PET (T)',\
    \ 'Phe->Ala (F)', 'Phe->Arg (F)', 'Phe->Asn (F)', 'Phe->Asp (F)', 'Phe->CamCys\
    \ (F)', 'Phe->Cys (F)', 'Phe->Gln (F)', 'Phe->Glu (F)', 'Phe->Gly (F)', 'Phe->His\
    \ (F)', 'Phe->Lys (F)', 'Phe->Met (F)', 'Phe->Pro (F)', 'Phe->Ser (F)', 'Phe->Thr\
    \ (F)', 'Phe->Trp (F)', 'Phe->Tyr (F)', 'Phe->Val (F)', 'Phe->Xle (F)', 'Phenylisocyanate\
    \ (N-term)', 'Phenylisocyanate:2H(5) (N-term)', 'phenylsulfonylethyl (C)', 'Phospho\
    \ (C)', 'Phospho (D)', 'Phospho (E)', 'Phospho (H)', 'Phospho (K)', 'Phospho (R)',\
    \ 'Phospho (S)', 'Phospho (T)', 'Phospho (Y)', 'Phosphoadenosine (H)', 'Phosphoadenosine\
    \ (K)', 'Phosphoadenosine (T)', 'Phosphoadenosine (Y)', 'PhosphoCytidine (S)',\
    \ 'PhosphoCytidine (T)', 'PhosphoCytidine (Y)', 'Phosphogluconoylation (K)', 'Phosphogluconoylation\
    \ (N-term)', 'Phosphoguanosine (H)', 'Phosphoguanosine (K)', 'PhosphoHex (S)',\
    \ 'PhosphoHex (T)', 'PhosphoHex(2) (N)', 'PhosphoHex(2) (S)', 'PhosphoHex(2) (T)',\
    \ 'PhosphoHexNAc (S)', 'PhosphoHexNAc (T)', 'Phosphopantetheine (S)', 'Phosphopropargyl\
    \ (S)', 'Phosphopropargyl (T)', 'Phosphopropargyl (Y)', 'phosphoRibosyl (D)',\
    \ 'phosphoRibosyl (E)', 'phosphoRibosyl (R)', 'PhosphoribosyldephosphoCoA (S)',\
    \ 'PhosphoUridine (H)', 'PhosphoUridine (Y)', 'Phycocyanobilin (C)', 'Phycoerythrobilin\
    \ (C)', 'Phytochromobilin (C)', 'Piperidine (K)', 'Piperidine (N-term)', 'Pro->Ala\
    \ (P)', 'Pro->Arg (P)', 'Pro->Asn (P)', 'Pro->Asp (P)', 'Pro->Cys (P)', 'Pro->Gln\
    \ (P)', 'Pro->Glu (P)', 'Pro->Gly (P)', 'Pro->HAVA (P)', 'Pro->His (P)', 'Pro->Lys\
    \ (P)', 'Pro->Met (P)', 'Pro->Phe (P)', 'Pro->pyro-Glu (P)', 'Pro->Pyrrolidinone\
    \ (P)', 'Pro->Pyrrolidone (P)', 'Pro->Ser (P)', 'Pro->Thr (P)', 'Pro->Trp (P)',\
    \ 'Pro->Tyr (P)', 'Pro->Val (P)', 'Pro->Xle (P)', 'probiotinhydrazide (P)', 'Propargylamine\
    \ (C-term)', 'Propargylamine (D)', 'Propargylamine (E)', 'Propionamide (C)', 'Propionamide\
    \ (K)', 'Propionamide (N-term)', 'Propionamide:2H(3) (C)', 'Propionyl (K)', 'Propionyl\
    \ (N-term)', 'Propionyl (Protein N-term)', 'Propionyl (S)', 'Propionyl (T)', 'Propionyl:13C(3)\
    \ (K)', 'Propionyl:13C(3) (N-term)', 'Propiophenone (C)', 'Propiophenone (H)',\
    \ 'Propiophenone (K)', 'Propiophenone (R)', 'Propiophenone (S)', 'Propiophenone\
    \ (T)', 'Propiophenone (W)', 'Propyl (C-term)', 'Propyl (D)', 'Propyl (E)', 'Propyl\
    \ (K)', 'Propyl (N-term)', 'Propyl (Protein C-term)', 'Propyl:2H(6) (K)', 'Propyl:2H(6)\
    \ (N-term)', 'PropylNAGthiazoline (C)', 'PS_Hapten (C)', 'PS_Hapten (H)', 'PS_Hapten\
    \ (K)', 'pupylation (K)', 'Puromycin (C-term)', 'PyMIC (N-term)', 'PyridoxalPhosphate\
    \ (K)', 'PyridoxalPhosphateH2 (K)', 'Pyridylacetyl (K)', 'Pyridylacetyl (N-term)',\
    \ 'Pyridylethyl (C)', 'Pyro-carbamidomethyl (N-term C)', 'pyrophospho (S)', 'pyrophospho\
    \ (T)', 'PyruvicAcidIminyl (K)', 'PyruvicAcidIminyl (Protein N-term C)', 'PyruvicAcidIminyl\
    \ (Protein N-term V)', 'QAT (C)', 'QAT:2H(3) (C)', 'QEQTGG (K)', 'QQQTGG (K)',\
    \ 'QTGG (K)', 'Quinone (W)', 'Quinone (Y)', 'Retinylidene (K)', 'RNPXL (N-term\
    \ K)', 'RNPXL (N-term R)', 'RNPXlink1 (C)', 'RNPXlink2 (F)', 'RNPXlink2 (K)',\
    \ 'RNPXlink2 (L)', 'RNPXlink3 (C)', 'RNPXlink3 (F)', 'RNPXlink4 (C)', 'RNPXlink5\
    \ (F)', 'RNPXlink5 (Y)', 's-GlcNAc (S)', 's-GlcNAc (T)', 'Saligenin (H)', 'Saligenin\
    \ (K)', 'Ser->Ala (S)', 'Ser->Arg (S)', 'Ser->Asn (S)', 'Ser->Asp (S)', 'Ser->Cys\
    \ (S)', 'Ser->Gln (S)', 'Ser->Glu (S)', 'Ser->Gly (S)', 'Ser->His (S)', 'Ser->LacticAcid\
    \ (Protein N-term S)', 'Ser->Lys (S)', 'Ser->Met (S)', 'Ser->Phe (S)', 'Ser->Pro\
    \ (S)', 'Ser->Thr (S)', 'Ser->Trp (S)', 'Ser->Tyr (S)', 'Ser->Val (S)', 'Ser->Xle\
    \ (S)', 'serotonylation (Q)', 'shTMT (K)', 'shTMT (N-term)', 'shTMT (Protein N-term)',\
    \ 'SMA (K)', 'SMA (N-term)', 'spermidine (Q)', 'spermine (Q)', 'SPITC (K)', 'SPITC\
    \ (N-term)', 'SPITC:13C(6) (K)', 'SPITC:13C(6) (N-term)', 'Succinyl (K)', 'Succinyl\
    \ (N-term)', 'Succinyl (Protein N-term)', 'Succinyl:13C(4) (K)', 'Succinyl:13C(4)\
    \ (N-term)', 'Succinyl:2H(4) (K)', 'Succinyl:2H(4) (N-term)', 'SulfanilicAcid\
    \ (C-term)', 'SulfanilicAcid (D)', 'SulfanilicAcid (E)', 'SulfanilicAcid:13C(6)\
    \ (C-term)', 'SulfanilicAcid:13C(6) (D)', 'SulfanilicAcid:13C(6) (E)', 'Sulfide\
    \ (C)', 'Sulfide (D)', 'Sulfide (W)', 'Sulfo (C)', 'Sulfo (S)', 'Sulfo (T)', 'Sulfo\
    \ (Y)', 'sulfo+amino (Y)', 'Sulfo-NHS-LC-LC-Biotin (K)', 'Sulfo-NHS-LC-LC-Biotin\
    \ (N-term)', 'SulfoGMBS (C)', 'SulfurDioxide (C)', 'SUMO2135 (K)', 'SUMO3549 (K)',\
    \ 'TAMRA-FP (S)', 'TAMRA-FP (Y)', 'Thiadiazole (C)', 'Thiazolidine (C)', 'Thiazolidine\
    \ (F)', 'Thiazolidine (H)', 'Thiazolidine (K)', 'Thiazolidine (Protein N-term)',\
    \ 'Thiazolidine (R)', 'Thiazolidine (W)', 'Thiazolidine (Y)', 'thioacylPA (K)',\
    \ 'Thiophos-S-S-biotin (S)', 'Thiophos-S-S-biotin (T)', 'Thiophos-S-S-biotin (Y)',\
    \ 'Thiophospho (S)', 'Thiophospho (T)', 'Thiophospho (Y)', 'Thr->Ala (T)', 'Thr->Arg\
    \ (T)', 'Thr->Asn (T)', 'Thr->Asp (T)', 'Thr->Cys (T)', 'Thr->Gln (T)', 'Thr->Glu\
    \ (T)', 'Thr->Gly (T)', 'Thr->His (T)', 'Thr->Lys (T)', 'Thr->Met (T)', 'Thr->Phe\
    \ (T)', 'Thr->Pro (T)', 'Thr->Ser (T)', 'Thr->Trp (T)', 'Thr->Tyr (T)', 'Thr->Val\
    \ (T)', 'Thr->Xle (T)', 'Thrbiotinhydrazide (T)', 'Thyroxine (Y)', 'TMAB (K)',\
    \ 'TMAB (N-term)', 'TMAB:2H(9) (K)', 'TMAB:2H(9) (N-term)', 'TMPP-Ac (K)', 'TMPP-Ac\
    \ (N-term)', 'TMPP-Ac (Y)', 'TMPP-Ac:13C(9) (K)', 'TMPP-Ac:13C(9) (N-term)', 'TMPP-Ac:13C(9)\
    \ (Y)', 'TMT (H)', 'TMT (K)', 'TMT (N-term)', 'TMT (Protein N-term)', 'TMT (S)',\
    \ 'TMT (T)', 'TMT2plex (H)', 'TMT2plex (K)', 'TMT2plex (N-term)', 'TMT2plex (Protein\
    \ N-term)', 'TMT2plex (S)', 'TMT2plex (T)', 'TMT6plex (H)', 'TMT6plex (K)', 'TMT6plex\
    \ (N-term)', 'TMT6plex (Protein N-term)', 'TMT6plex (S)', 'TMT6plex (T)', 'TMTpro\
    \ (H)', 'TMTpro (K)', 'TMTpro (N-term)', 'TMTpro (Protein N-term)', 'TMTpro (S)',\
    \ 'TMTpro (T)', 'TMTpro_zero (H)', 'TMTpro_zero (K)', 'TMTpro_zero (N-term)',\
    \ 'TMTpro_zero (Protein N-term)', 'TMTpro_zero (S)', 'TMTpro_zero (T)', 'TNBS\
    \ (K)', 'TNBS (N-term)', 'trifluoro (L)', 'Triiodo (Y)', 'Triiodothyronine (Y)',\
    \ 'Trimethyl (K)', 'Trimethyl (Protein N-term A)', 'Trimethyl (R)', 'Trimethyl:13C(3)2H(9)\
    \ (K)', 'Trimethyl:13C(3)2H(9) (R)', 'Trimethyl:2H(9) (K)', 'Trimethyl:2H(9) (R)',\
    \ 'Trioxidation (C)', 'Trioxidation (F)', 'Trioxidation (W)', 'Trioxidation (Y)',\
    \ 'Tripalmitate (Protein N-term C)', 'Tris (N)', 'Triton (C-term)', 'Triton (N-term)',\
    \ 'Trp->Ala (W)', 'Trp->Arg (W)', 'Trp->Asn (W)', 'Trp->Asp (W)', 'Trp->Cys (W)',\
    \ 'Trp->Gln (W)', 'Trp->Glu (W)', 'Trp->Gly (W)', 'Trp->His (W)', 'Trp->Hydroxykynurenin\
    \ (W)', 'Trp->Kynurenin (W)', 'Trp->Lys (W)', 'Trp->Met (W)', 'Trp->Oxolactone\
    \ (W)', 'Trp->Phe (W)', 'Trp->Pro (W)', 'Trp->Ser (W)', 'Trp->Thr (W)', 'Trp->Tyr\
    \ (W)', 'Trp->Val (W)', 'Trp->Xle (W)', 'Tween20 (N-term)', 'Tween80 (C-term)',\
    \ 'Tyr->Ala (Y)', 'Tyr->Arg (Y)', 'Tyr->Asn (Y)', 'Tyr->Asp (Y)', 'Tyr->Cys (Y)',\
    \ 'Tyr->Dha (Y)', 'Tyr->Gln (Y)', 'Tyr->Glu (Y)', 'Tyr->Gly (Y)', 'Tyr->His (Y)',\
    \ 'Tyr->Lys (Y)', 'Tyr->Met (Y)', 'Tyr->Phe (Y)', 'Tyr->Pro (Y)', 'Tyr->Ser (Y)',\
    \ 'Tyr->Thr (Y)', 'Tyr->Trp (Y)', 'Tyr->Val (Y)', 'Tyr->Xle (Y)', 'Ub-amide (C)',\
    \ 'Ub-Br2 (C)', 'Ub-fluorescein (C)', 'Ub-VME (C)', 'UgiJoullie (D)', 'UgiJoullie\
    \ (E)', 'UgiJoullieProGly (D)', 'UgiJoullieProGly (E)', 'UgiJoullieProGlyProGly\
    \ (D)', 'UgiJoullieProGlyProGly (E)', 'Unknown:162 (C-term)', 'Unknown:162 (D)',\
    \ 'Unknown:162 (E)', 'Unknown:162 (N-term)', 'Unknown:177 (C-term)', 'Unknown:177\
    \ (D)', 'Unknown:177 (E)', 'Unknown:177 (N-term)', 'Unknown:210 (C-term)', 'Unknown:210\
    \ (D)', 'Unknown:210 (E)', 'Unknown:210 (N-term)', 'Unknown:216 (C-term)', 'Unknown:216\
    \ (D)', 'Unknown:216 (E)', 'Unknown:216 (N-term)', 'Unknown:234 (C-term)', 'Unknown:234\
    \ (D)', 'Unknown:234 (E)', 'Unknown:234 (N-term)', 'Unknown:248 (C-term)', 'Unknown:248\
    \ (D)', 'Unknown:248 (E)', 'Unknown:248 (N-term)', 'Unknown:250 (C-term)', 'Unknown:250\
    \ (D)', 'Unknown:250 (E)', 'Unknown:250 (N-term)', 'Unknown:302 (C-term)', 'Unknown:302\
    \ (D)', 'Unknown:302 (E)', 'Unknown:302 (N-term)', 'Unknown:306 (C-term)', 'Unknown:306\
    \ (D)', 'Unknown:306 (E)', 'Unknown:306 (N-term)', 'Unknown:420 (C-term)', 'Unknown:420\
    \ (N-term)', 'Val->Ala (V)', 'Val->Arg (V)', 'Val->Asn (V)', 'Val->Asp (V)', 'Val->Cys\
    \ (V)', 'Val->Gln (V)', 'Val->Glu (V)', 'Val->Gly (V)', 'Val->His (V)', 'Val->Lys\
    \ (V)', 'Val->Met (V)', 'Val->Phe (V)', 'Val->Pro (V)', 'Val->Ser (V)', 'Val->Thr\
    \ (V)', 'Val->Trp (V)', 'Val->Tyr (V)', 'Val->Xle (V)', 'VFQQQTGG (K)', 'VIEVYQEQTGG\
    \ (K)', 'Withaferin (C)', 'Xle->Ala (I)', 'Xle->Ala (L)', 'Xle->Arg (I)', 'Xle->Arg\
    \ (L)', 'Xle->Asn (I)', 'Xle->Asn (L)', 'Xle->Asp (I)', 'Xle->Asp (L)', 'Xle->Cys\
    \ (I)', 'Xle->Cys (L)', 'Xle->Gln (I)', 'Xle->Gln (L)', 'Xle->Glu (I)', 'Xle->Glu\
    \ (L)', 'Xle->Gly (I)', 'Xle->Gly (L)', 'Xle->His (I)', 'Xle->His (L)', 'Xle->Lys\
    \ (I)', 'Xle->Lys (L)', 'Xle->Met (I)', 'Xle->Met (L)', 'Xle->Phe (I)', 'Xle->Phe\
    \ (L)', 'Xle->Pro (I)', 'Xle->Pro (L)', 'Xle->Ser (I)', 'Xle->Ser (L)', 'Xle->Thr\
    \ (I)', 'Xle->Thr (L)', 'Xle->Trp (I)', 'Xle->Trp (L)', 'Xle->Tyr (I)', 'Xle->Tyr\
    \ (L)', 'Xle->Val (I)', 'Xle->Val (L)', 'Xlink:B10621 (C)', 'Xlink:BMOE (C)',\
    \ 'Xlink:BS2G[113] (K)', 'Xlink:BS2G[113] (Protein N-term)', 'Xlink:BS2G[114]\
    \ (K)', 'Xlink:BS2G[114] (Protein N-term)', 'Xlink:BS2G[217] (K)', 'Xlink:BS2G[217]\
    \ (Protein N-term)', 'Xlink:BS2G[96] (K)', 'Xlink:BS2G[96] (Protein N-term)',\
    \ 'Xlink:BuUrBu[111] (K)', 'Xlink:BuUrBu[111] (Protein N-term)', 'Xlink:BuUrBu[196]\
    \ (K)', 'Xlink:BuUrBu[196] (Protein N-term)', 'Xlink:BuUrBu[213] (K)', 'Xlink:BuUrBu[213]\
    \ (Protein N-term)', 'Xlink:BuUrBu[214] (K)', 'Xlink:BuUrBu[214] (Protein N-term)',\
    \ 'Xlink:BuUrBu[317] (K)', 'Xlink:BuUrBu[317] (Protein N-term)', 'Xlink:BuUrBu[85]\
    \ (K)', 'Xlink:BuUrBu[85] (Protein N-term)', 'Xlink:DFDNB (K)', 'Xlink:DFDNB (N)',\
    \ 'Xlink:DFDNB (Q)', 'Xlink:DFDNB (R)', 'Xlink:DMP[122] (K)', 'Xlink:DMP[122]\
    \ (Protein N-term)', 'Xlink:DMP[139] (K)', 'Xlink:DMP[139] (Protein N-term)',\
    \ 'Xlink:DMP[140] (K)', 'Xlink:DMP[140] (Protein N-term)', 'Xlink:DMP[154] (K)',\
    \ 'Xlink:DMP[154] (Protein N-term)', 'Xlink:DSS[138] (K)', 'Xlink:DSS[138] (Protein\
    \ N-term)', 'Xlink:DSS[155] (K)', 'Xlink:DSS[155] (Protein N-term)', 'Xlink:DSS[156]\
    \ (K)', 'Xlink:DSS[156] (Protein N-term)', 'Xlink:DSS[259] (K)', 'Xlink:DSS[259]\
    \ (Protein N-term)', 'Xlink:DSSO[104] (K)', 'Xlink:DSSO[104] (Protein N-term)',\
    \ 'Xlink:DSSO[158] (K)', 'Xlink:DSSO[158] (Protein N-term)', 'Xlink:DSSO[175]\
    \ (K)', 'Xlink:DSSO[175] (Protein N-term)', 'Xlink:DSSO[176] (K)', 'Xlink:DSSO[176]\
    \ (Protein N-term)', 'Xlink:DSSO[279] (K)', 'Xlink:DSSO[279] (Protein N-term)',\
    \ 'Xlink:DSSO[54] (K)', 'Xlink:DSSO[54] (Protein N-term)', 'Xlink:DSSO[86] (K)',\
    \ 'Xlink:DSSO[86] (Protein N-term)', 'Xlink:DST[114] (K)', 'Xlink:DST[114] (Protein\
    \ N-term)', 'Xlink:DST[132] (K)', 'Xlink:DST[132] (Protein N-term)', 'Xlink:DST[56]\
    \ (K)', 'Xlink:DST[56] (Protein N-term)', 'Xlink:DTBP[172] (K)', 'Xlink:DTBP[172]\
    \ (Protein N-term)', 'Xlink:DTBP[87] (K)', 'Xlink:DTBP[87] (Protein N-term)',\
    \ 'Xlink:DTSSP[174] (K)', 'Xlink:DTSSP[174] (Protein N-term)', 'Xlink:DTSSP[192]\
    \ (K)', 'Xlink:DTSSP[192] (Protein N-term)', 'Xlink:DTSSP[88] (K)', 'Xlink:DTSSP[88]\
    \ (Protein N-term)', 'Xlink:EGS[115] (K)', 'Xlink:EGS[115] (Protein N-term)',\
    \ 'Xlink:EGS[226] (K)', 'Xlink:EGS[226] (Protein N-term)', 'Xlink:EGS[244] (K)',\
    \ 'Xlink:EGS[244] (Protein N-term)', 'Xlink:SMCC[219] (C)', 'Xlink:SMCC[219] (K)',\
    \ 'Xlink:SMCC[219] (Protein N-term)', 'Xlink:SMCC[237] (C)', 'Xlink:SMCC[237]\
    \ (K)', 'Xlink:SMCC[237] (Protein N-term)', 'Xlink:SMCC[321] (C)', 'ZGB (K)',\
    \ 'ZGB (N-term)', 'ZQG (K)')"
  type: long?
  inputBinding:
    prefix: -fixed_modifications
- id: in_variable_modifications
  doc: "Variable modifications, specified using Unimod (www.unimod.org) terms, e.g.\
    \ 'Carbamidomethyl (C)' or 'Oxidation (M)' (default: '[Oxidation (M)]' valid:\
    \ '15N-oxobutanoic (N-term C)', '15N-oxobutanoic (Protein N-term S)', '15N-oxobutanoic\
    \ (Protein N-term T)', '2-dimethylsuccinyl (C)', '2-monomethylsuccinyl (C)', '2-nitrobenzyl\
    \ (Y)', '2-succinyl (C)', '2HPG (R)', '3-deoxyglucosone (R)', '3-phosphoglyceryl\
    \ (K)', '3sulfo (N-term)', '4-ONE (C)', '4-ONE (H)', '4-ONE (K)', '4-ONE+Delta:H(-2)O(-1)\
    \ (C)', '4-ONE+Delta:H(-2)O(-1) (H)', '4-ONE+Delta:H(-2)O(-1) (K)', '4AcAllylGal\
    \ (C)', 'a-type-ion (C-term)', 'AccQTag (K)', 'AccQTag (N-term)', 'Acetyl (C)',\
    \ 'Acetyl (H)', 'Acetyl (K)', 'Acetyl (N-term)', 'Acetyl (Protein N-term)', 'Acetyl\
    \ (R)', 'Acetyl (S)', 'Acetyl (T)', 'Acetyl (Y)', 'Acetyl:13C(2) (K)', 'Acetyl:13C(2)\
    \ (Protein N-term)', 'Acetyl:2H(3) (H)', 'Acetyl:2H(3) (K)', 'Acetyl:2H(3) (N-term)',\
    \ 'Acetyl:2H(3) (Protein N-term)', 'Acetyl:2H(3) (S)', 'Acetyl:2H(3) (T)', 'Acetyl:2H(3)\
    \ (Y)', 'Acetyldeoxyhypusine (K)', 'Acetylhypusine (K)', 'ADP-Ribosyl (C)', 'ADP-Ribosyl\
    \ (D)', 'ADP-Ribosyl (E)', 'ADP-Ribosyl (K)', 'ADP-Ribosyl (N)', 'ADP-Ribosyl\
    \ (R)', 'ADP-Ribosyl (S)', 'ADP-Ribosyl (T)', 'AEBS (H)', 'AEBS (K)', 'AEBS (Protein\
    \ N-term)', 'AEBS (S)', 'AEBS (Y)', 'AEC-MAEC (S)', 'AEC-MAEC (T)', 'AEC-MAEC:2H(4)\
    \ (S)', 'AEC-MAEC:2H(4) (T)', 'AFB1_Dialdehyde (K)', 'AHA-Alkyne (M)', 'AHA-Alkyne-KDDDD\
    \ (M)', 'AHA-SS (M)', 'AHA-SS_CAM (M)', 'Ahx2+Hsl (C-term)', 'Ala->Arg (A)', 'Ala->Asn\
    \ (A)', 'Ala->Asp (A)', 'Ala->Cys (A)', 'Ala->Gln (A)', 'Ala->Glu (A)', 'Ala->Gly\
    \ (A)', 'Ala->His (A)', 'Ala->Lys (A)', 'Ala->Met (A)', 'Ala->Phe (A)', 'Ala->Pro\
    \ (A)', 'Ala->Ser (A)', 'Ala->Thr (A)', 'Ala->Trp (A)', 'Ala->Tyr (A)', 'Ala->Val\
    \ (A)', 'Ala->Xle (A)', 'Amidated (C-term)', 'Amidated (Protein C-term)', 'Amidine\
    \ (K)', 'Amidine (N-term)', 'Amidino (C)', 'Amino (Y)', 'Ammonia-loss (N)', 'Ammonia-loss\
    \ (N-term C)', 'Ammonia-loss (Protein N-term S)', 'Ammonia-loss (Protein N-term\
    \ T)', 'Ammonium (C-term)', 'Ammonium (D)', 'Ammonium (E)', 'AMTzHexNAc2 (N)',\
    \ 'AMTzHexNAc2 (S)', 'AMTzHexNAc2 (T)', 'Archaeol (C)', 'Arg (N-term)', 'Arg->Ala\
    \ (R)', 'Arg->Asn (R)', 'Arg->Asp (R)', 'Arg->Cys (R)', 'Arg->Gln (R)', 'Arg->Glu\
    \ (R)', 'Arg->GluSA (R)', 'Arg->Gly (R)', 'Arg->His (R)', 'Arg->Lys (R)', 'Arg->Met\
    \ (R)', 'Arg->Npo (R)', 'Arg->Orn (R)', 'Arg->Phe (R)', 'Arg->Pro (R)', 'Arg->Ser\
    \ (R)', 'Arg->Thr (R)', 'Arg->Trp (R)', 'Arg->Tyr (R)', 'Arg->Val (R)', 'Arg->Xle\
    \ (R)', 'Arg-loss (C-term R)', 'Arg2PG (R)', 'Argbiotinhydrazide (R)', 'AROD (C)',\
    \ 'Asn->Ala (N)', 'Asn->Arg (N)', 'Asn->Asp (N)', 'Asn->Cys (N)', 'Asn->Gln (N)',\
    \ 'Asn->Glu (N)', 'Asn->Gly (N)', 'Asn->His (N)', 'Asn->Lys (N)', 'Asn->Met (N)',\
    \ 'Asn->Phe (N)', 'Asn->Pro (N)', 'Asn->Ser (N)', 'Asn->Thr (N)', 'Asn->Trp (N)',\
    \ 'Asn->Tyr (N)', 'Asn->Val (N)', 'Asn->Xle (N)', 'Asp->Ala (D)', 'Asp->Arg (D)',\
    \ 'Asp->Asn (D)', 'Asp->Cys (D)', 'Asp->Gln (D)', 'Asp->Glu (D)', 'Asp->Gly (D)',\
    \ 'Asp->His (D)', 'Asp->Lys (D)', 'Asp->Met (D)', 'Asp->Phe (D)', 'Asp->Pro (D)',\
    \ 'Asp->Ser (D)', 'Asp->Thr (D)', 'Asp->Trp (D)', 'Asp->Tyr (D)', 'Asp->Val (D)',\
    \ 'Asp->Xle (D)', 'Aspartylurea (H)', 'Atto495Maleimide (C)', 'AzidoF (F)', 'azole\
    \ (C)', 'azole (S)', 'Bacillosamine (N)', 'BADGE (C)', 'BDMAPP (H)', 'BDMAPP (K)',\
    \ 'BDMAPP (Protein N-term)', 'BDMAPP (W)', 'BDMAPP (Y)', 'BEMAD_C (C)', 'BEMAD_C:2H(6)\
    \ (C)', 'BEMAD_ST (S)', 'BEMAD_ST (T)', 'BEMAD_ST:2H(6) (S)', 'BEMAD_ST:2H(6)\
    \ (T)', 'Benzoyl (K)', 'Benzoyl (N-term)', 'benzylguanidine (K)', 'betaFNA (C)',\
    \ 'betaFNA (K)', 'BHT (C)', 'BHT (H)', 'BHT (K)', 'BHTOH (C)', 'BHTOH (H)', 'BHTOH\
    \ (K)', 'Biotin (K)', 'Biotin (N-term)', 'Biotin-HPDP (C)', 'Biotin-PEG-PRA (M)',\
    \ 'Biotin-PEO-Amine (D)', 'Biotin-PEO-Amine (E)', 'Biotin-PEO-Amine (Protein C-term)',\
    \ 'Biotin-phenacyl (C)', 'Biotin-phenacyl (H)', 'Biotin-phenacyl (S)', 'Biotin-tyramide\
    \ (Y)', 'Biotin:Cayman-10013 (C)', 'Biotin:Cayman-10141 (C)', 'Biotin:Invitrogen-M1602\
    \ (C)', 'Biotin:Sigma-B1267 (C)', 'Biotin:Thermo-21325 (K)', 'Biotin:Thermo-21328\
    \ (K)', 'Biotin:Thermo-21328 (N-term)', 'Biotin:Thermo-21330 (K)', 'Biotin:Thermo-21330\
    \ (N-term)', 'Biotin:Thermo-21345 (Q)', 'Biotin:Thermo-21360 (X)', 'Biotin:Thermo-21901+2H2O\
    \ (C)', 'Biotin:Thermo-21901+H2O (C)', 'Biotin:Thermo-21911 (C)', 'Biotin:Thermo-33033\
    \ (X)', 'Biotin:Thermo-33033-H (X)', 'Biotin:Thermo-88310 (K)', 'Biotin:Thermo-88317\
    \ (S)', 'Biotin:Thermo-88317 (Y)', 'biotinAcrolein298 (C)', 'biotinAcrolein298\
    \ (H)', 'biotinAcrolein298 (K)', 'biotinAcrolein298 (Protein N-term)', 'BisANS\
    \ (K)', 'bisANS-sulfonates (K)', 'bisANS-sulfonates (S)', 'bisANS-sulfonates (T)',\
    \ 'BITC (C)', 'BITC (K)', 'BITC (N-term)', 'BMP-piperidinol (C)', 'BMP-piperidinol\
    \ (M)', 'Bodipy (C)', 'Brij35 (N-term)', 'Brij58 (N-term)', 'Bromo (F)', 'Bromo\
    \ (H)', 'Bromo (W)', 'Bromo (Y)', 'Bromobimane (C)', 'Butyryl (K)', 'C8-QAT (K)',\
    \ 'C8-QAT (N-term)', 'CAF (N-term)', 'CAMthiopropanoyl (K)', 'CAMthiopropanoyl\
    \ (Protein N-term)', 'Can-FP-biotin (S)', 'Can-FP-biotin (T)', 'Can-FP-biotin\
    \ (Y)', 'Carbamidomethyl (C)', 'Carbamidomethyl (D)', 'Carbamidomethyl (E)', 'Carbamidomethyl\
    \ (H)', 'Carbamidomethyl (K)', 'Carbamidomethyl (M)', 'Carbamidomethyl (N-term)',\
    \ 'Carbamidomethyl (S)', 'Carbamidomethyl (T)', 'Carbamidomethyl (U)', 'Carbamidomethyl\
    \ (Y)', 'CarbamidomethylDTT (C)', 'Carbamyl (C)', 'Carbamyl (K)', 'Carbamyl (M)',\
    \ 'Carbamyl (N-term)', 'Carbamyl (Protein N-term)', 'Carbamyl (R)', 'Carbamyl\
    \ (S)', 'Carbamyl (T)', 'Carbamyl (Y)', 'Carbofuran (S)', 'Carbonyl (A)', 'Carbonyl\
    \ (E)', 'Carbonyl (I)', 'Carbonyl (L)', 'Carbonyl (Q)', 'Carbonyl (R)', 'Carbonyl\
    \ (S)', 'Carbonyl (V)', 'Carboxy (D)', 'Carboxy (E)', 'Carboxy (K)', 'Carboxy\
    \ (Protein N-term M)', 'Carboxy (W)', 'Carboxy->Thiocarboxy (Protein C-term G)',\
    \ 'Carboxyethyl (H)', 'Carboxyethyl (K)', 'Carboxyethylpyrrole (K)', 'Carboxymethyl\
    \ (C)', 'Carboxymethyl (K)', 'Carboxymethyl (N-term)', 'Carboxymethyl (U)', 'Carboxymethyl\
    \ (W)', 'Carboxymethyl:13C(2) (C)', 'CarboxymethylDMAP (N-term)', 'CarboxymethylDTT\
    \ (C)', 'Cation:Ag (C-term)', 'Cation:Ag (D)', 'Cation:Ag (E)', 'Cation:Al[III]\
    \ (C-term)', 'Cation:Al[III] (D)', 'Cation:Al[III] (E)', 'Cation:Ca[II] (C-term)',\
    \ 'Cation:Ca[II] (D)', 'Cation:Ca[II] (E)', 'Cation:Cu[I] (C-term)', 'Cation:Cu[I]\
    \ (D)', 'Cation:Cu[I] (E)', 'Cation:Cu[I] (H)', 'Cation:Fe[II] (C-term)', 'Cation:Fe[II]\
    \ (D)', 'Cation:Fe[II] (E)', 'Cation:Fe[III] (C-term)', 'Cation:Fe[III] (D)',\
    \ 'Cation:Fe[III] (E)', 'Cation:K (C-term)', 'Cation:K (D)', 'Cation:K (E)', 'Cation:Li\
    \ (C-term)', 'Cation:Li (D)', 'Cation:Li (E)', 'Cation:Mg[II] (C-term)', 'Cation:Mg[II]\
    \ (D)', 'Cation:Mg[II] (E)', 'Cation:Na (C-term)', 'Cation:Na (D)', 'Cation:Na\
    \ (E)', 'Cation:Ni[II] (C-term)', 'Cation:Ni[II] (D)', 'Cation:Ni[II] (E)', 'Cation:Zn[II]\
    \ (C-term)', 'Cation:Zn[II] (D)', 'Cation:Zn[II] (E)', 'Cation:Zn[II] (H)', 'cGMP\
    \ (C)', 'cGMP (S)', 'cGMP+RMP-loss (C)', 'cGMP+RMP-loss (S)', 'CHDH (D)', 'Chlorination\
    \ (W)', 'Chlorination (Y)', 'Cholesterol (Protein C-term)', 'CIGG (K)', 'CLIP_TRAQ_2\
    \ (K)', 'CLIP_TRAQ_2 (N-term)', 'CLIP_TRAQ_2 (Y)', 'CLIP_TRAQ_3 (K)', 'CLIP_TRAQ_3\
    \ (N-term)', 'CLIP_TRAQ_3 (Y)', 'CLIP_TRAQ_4 (K)', 'CLIP_TRAQ_4 (N-term)', 'CLIP_TRAQ_4\
    \ (Y)', 'CoenzymeA (C)', 'Cresylphosphate (H)', 'Cresylphosphate (K)', 'Cresylphosphate\
    \ (R)', 'Cresylphosphate (S)', 'Cresylphosphate (T)', 'Cresylphosphate (Y)', 'CresylSaligeninPhosphate\
    \ (H)', 'CresylSaligeninPhosphate (K)', 'CresylSaligeninPhosphate (R)', 'CresylSaligeninPhosphate\
    \ (S)', 'CresylSaligeninPhosphate (T)', 'CresylSaligeninPhosphate (Y)', 'Crotonaldehyde\
    \ (C)', 'Crotonaldehyde (H)', 'Crotonaldehyde (K)', 'Crotonyl (K)', 'CuSMo (C)',\
    \ 'CUSTOM0 (A)', 'CUSTOM0 (C)', 'CUSTOM0 (C-term)', 'CUSTOM0 (D)', 'CUSTOM0 (E)',\
    \ 'CUSTOM0 (F)', 'CUSTOM0 (G)', 'CUSTOM0 (H)', 'CUSTOM0 (I)', 'CUSTOM0 (K)', 'CUSTOM0\
    \ (L)', 'CUSTOM0 (M)', 'CUSTOM0 (N)', 'CUSTOM0 (N-term)', 'CUSTOM0 (P)', 'CUSTOM0\
    \ (Q)', 'CUSTOM0 (R)', 'CUSTOM0 (S)', 'CUSTOM0 (T)', 'CUSTOM0 (V)', 'CUSTOM0 (W)',\
    \ 'CUSTOM0 (Y)', 'CUSTOM1 (A)', 'CUSTOM1 (C)', 'CUSTOM1 (C-term)', 'CUSTOM1 (D)',\
    \ 'CUSTOM1 (E)', 'CUSTOM1 (F)', 'CUSTOM1 (G)', 'CUSTOM1 (H)', 'CUSTOM1 (I)', 'CUSTOM1\
    \ (K)', 'CUSTOM1 (L)', 'CUSTOM1 (M)', 'CUSTOM1 (N)', 'CUSTOM1 (N-term)', 'CUSTOM1\
    \ (P)', 'CUSTOM1 (Q)', 'CUSTOM1 (R)', 'CUSTOM1 (S)', 'CUSTOM1 (T)', 'CUSTOM1 (V)',\
    \ 'CUSTOM1 (W)', 'CUSTOM1 (Y)', 'CUSTOM2 (A)', 'CUSTOM2 (C)', 'CUSTOM2 (C-term)',\
    \ 'CUSTOM2 (D)', 'CUSTOM2 (E)', 'CUSTOM2 (F)', 'CUSTOM2 (G)', 'CUSTOM2 (H)', 'CUSTOM2\
    \ (I)', 'CUSTOM2 (K)', 'CUSTOM2 (L)', 'CUSTOM2 (M)', 'CUSTOM2 (N)', 'CUSTOM2 (N-term)',\
    \ 'CUSTOM2 (P)', 'CUSTOM2 (Q)', 'CUSTOM2 (R)', 'CUSTOM2 (S)', 'CUSTOM2 (T)', 'CUSTOM2\
    \ (V)', 'CUSTOM2 (W)', 'CUSTOM2 (Y)', 'CUSTOM3 (A)', 'CUSTOM3 (C)', 'CUSTOM3 (C-term)',\
    \ 'CUSTOM3 (D)', 'CUSTOM3 (E)', 'CUSTOM3 (F)', 'CUSTOM3 (G)', 'CUSTOM3 (H)', 'CUSTOM3\
    \ (I)', 'CUSTOM3 (K)', 'CUSTOM3 (L)', 'CUSTOM3 (M)', 'CUSTOM3 (N)', 'CUSTOM3 (N-term)',\
    \ 'CUSTOM3 (P)', 'CUSTOM3 (Q)', 'CUSTOM3 (R)', 'CUSTOM3 (S)', 'CUSTOM3 (T)', 'CUSTOM3\
    \ (V)', 'CUSTOM3 (W)', 'CUSTOM3 (Y)', 'CUSTOM4 (A)', 'CUSTOM4 (C)', 'CUSTOM4 (C-term)',\
    \ 'CUSTOM4 (D)', 'CUSTOM4 (E)', 'CUSTOM4 (F)', 'CUSTOM4 (G)', 'CUSTOM4 (H)', 'CUSTOM4\
    \ (I)', 'CUSTOM4 (K)', 'CUSTOM4 (L)', 'CUSTOM4 (M)', 'CUSTOM4 (N)', 'CUSTOM4 (N-term)',\
    \ 'CUSTOM4 (P)', 'CUSTOM4 (Q)', 'CUSTOM4 (R)', 'CUSTOM4 (S)', 'CUSTOM4 (T)', 'CUSTOM4\
    \ (V)', 'CUSTOM4 (W)', 'CUSTOM4 (Y)', 'CUSTOM5 (A)', 'CUSTOM5 (C)', 'CUSTOM5 (C-term)',\
    \ 'CUSTOM5 (D)', 'CUSTOM5 (E)', 'CUSTOM5 (F)', 'CUSTOM5 (G)', 'CUSTOM5 (H)', 'CUSTOM5\
    \ (I)', 'CUSTOM5 (K)', 'CUSTOM5 (L)', 'CUSTOM5 (M)', 'CUSTOM5 (N)', 'CUSTOM5 (N-term)',\
    \ 'CUSTOM5 (P)', 'CUSTOM5 (Q)', 'CUSTOM5 (R)', 'CUSTOM5 (S)', 'CUSTOM5 (T)', 'CUSTOM5\
    \ (V)', 'CUSTOM5 (W)', 'CUSTOM5 (Y)', 'CUSTOM6 (A)', 'CUSTOM6 (C)', 'CUSTOM6 (C-term)',\
    \ 'CUSTOM6 (D)', 'CUSTOM6 (E)', 'CUSTOM6 (F)', 'CUSTOM6 (G)', 'CUSTOM6 (H)', 'CUSTOM6\
    \ (I)', 'CUSTOM6 (K)', 'CUSTOM6 (L)', 'CUSTOM6 (M)', 'CUSTOM6 (N)', 'CUSTOM6 (N-term)',\
    \ 'CUSTOM6 (P)', 'CUSTOM6 (Q)', 'CUSTOM6 (R)', 'CUSTOM6 (S)', 'CUSTOM6 (T)', 'CUSTOM6\
    \ (V)', 'CUSTOM6 (W)', 'CUSTOM6 (Y)', 'CUSTOM7 (A)', 'CUSTOM7 (C)', 'CUSTOM7 (C-term)',\
    \ 'CUSTOM7 (D)', 'CUSTOM7 (E)', 'CUSTOM7 (F)', 'CUSTOM7 (G)', 'CUSTOM7 (H)', 'CUSTOM7\
    \ (I)', 'CUSTOM7 (K)', 'CUSTOM7 (L)', 'CUSTOM7 (M)', 'CUSTOM7 (N)', 'CUSTOM7 (N-term)',\
    \ 'CUSTOM7 (P)', 'CUSTOM7 (Q)', 'CUSTOM7 (R)', 'CUSTOM7 (S)', 'CUSTOM7 (T)', 'CUSTOM7\
    \ (V)', 'CUSTOM7 (W)', 'CUSTOM7 (Y)', 'CUSTOM8 (A)', 'CUSTOM8 (C)', 'CUSTOM8 (C-term)',\
    \ 'CUSTOM8 (D)', 'CUSTOM8 (E)', 'CUSTOM8 (F)', 'CUSTOM8 (G)', 'CUSTOM8 (H)', 'CUSTOM8\
    \ (I)', 'CUSTOM8 (K)', 'CUSTOM8 (L)', 'CUSTOM8 (M)', 'CUSTOM8 (N)', 'CUSTOM8 (N-term)',\
    \ 'CUSTOM8 (P)', 'CUSTOM8 (Q)', 'CUSTOM8 (R)', 'CUSTOM8 (S)', 'CUSTOM8 (T)', 'CUSTOM8\
    \ (V)', 'CUSTOM8 (W)', 'CUSTOM8 (Y)', 'CUSTOM9 (A)', 'CUSTOM9 (C)', 'CUSTOM9 (C-term)',\
    \ 'CUSTOM9 (D)', 'CUSTOM9 (E)', 'CUSTOM9 (F)', 'CUSTOM9 (G)', 'CUSTOM9 (H)', 'CUSTOM9\
    \ (I)', 'CUSTOM9 (K)', 'CUSTOM9 (L)', 'CUSTOM9 (M)', 'CUSTOM9 (N)', 'CUSTOM9 (N-term)',\
    \ 'CUSTOM9 (P)', 'CUSTOM9 (Q)', 'CUSTOM9 (R)', 'CUSTOM9 (S)', 'CUSTOM9 (T)', 'CUSTOM9\
    \ (V)', 'CUSTOM9 (W)', 'CUSTOM9 (Y)', 'Cy3-maleimide (C)', 'Cy3b-maleimide (C)',\
    \ 'Cyano (C)', 'CyDye-Cy3 (C)', 'CyDye-Cy5 (C)', 'Cys->Ala (C)', 'Cys->Arg (C)',\
    \ 'Cys->Asn (C)', 'Cys->Asp (C)', 'Cys->CamSec (C)', 'Cys->Dha (C)', 'Cys->ethylaminoAla\
    \ (C)', 'Cys->Gln (C)', 'Cys->Glu (C)', 'Cys->Gly (C)', 'Cys->His (C)', 'Cys->Lys\
    \ (C)', 'Cys->Met (C)', 'Cys->methylaminoAla (C)', 'Cys->Oxoalanine (C)', 'Cys->Phe\
    \ (C)', 'Cys->Pro (C)', 'Cys->PyruvicAcid (Protein N-term C)', 'Cys->SecNEM (C)',\
    \ 'Cys->SecNEM:2H(5) (C)', 'Cys->Ser (C)', 'Cys->Thr (C)', 'Cys->Trp (C)', 'Cys->Tyr\
    \ (C)', 'Cys->Val (C)', 'Cys->Xle (C)', 'Cysteinyl (C)', 'cysTMT (C)', 'cysTMT6plex\
    \ (C)', 'Cytopiloyne (C)', 'Cytopiloyne (K)', 'Cytopiloyne (N-term)', 'Cytopiloyne\
    \ (P)', 'Cytopiloyne (R)', 'Cytopiloyne (S)', 'Cytopiloyne (Y)', 'Cytopiloyne+water\
    \ (C)', 'Cytopiloyne+water (K)', 'Cytopiloyne+water (N-term)', 'Cytopiloyne+water\
    \ (R)', 'Cytopiloyne+water (S)', 'Cytopiloyne+water (T)', 'Cytopiloyne+water (Y)',\
    \ 'DAET (S)', 'DAET (T)', 'Dansyl (K)', 'Dansyl (N-term)', 'Dap-DSP (A)', 'Dap-DSP\
    \ (E)', 'Dap-DSP (K)', 'Deamidated (N)', 'Deamidated (Protein N-term F)', 'Deamidated\
    \ (Q)', 'Deamidated (R)', 'Deamidated:18O(1) (N)', 'Deamidated:18O(1) (Q)', 'Decanoyl\
    \ (S)', 'Decanoyl (T)', 'Decarboxylation (D)', 'Decarboxylation (E)', 'DEDGFLYMVYASQETFG\
    \ (K)', 'Dehydrated (D)', 'Dehydrated (N-term C)', 'Dehydrated (Protein C-term\
    \ N)', 'Dehydrated (Protein C-term Q)', 'Dehydrated (S)', 'Dehydrated (T)', 'Dehydrated\
    \ (Y)', 'Dehydro (C)', 'Delta:H(-4)O(2) (W)', 'Delta:H(-4)O(3) (W)', 'Delta:H(1)N(-1)18O(1)\
    \ (N)', 'Delta:H(10)C(8)O(1) (K)', 'Delta:H(2)C(2) (H)', 'Delta:H(2)C(2) (K)',\
    \ 'Delta:H(2)C(2) (N-term)', 'Delta:H(2)C(2) (Protein N-term)', 'Delta:H(2)C(3)\
    \ (K)', 'Delta:H(2)C(3)O(1) (K)', 'Delta:H(2)C(3)O(1) (R)', 'Delta:H(2)C(5) (K)',\
    \ 'Delta:H(3)C(3)O(2) (K)', 'Delta:H(4)C(2) (H)', 'Delta:H(4)C(2) (K)', 'Delta:H(4)C(2)\
    \ (N-term)', 'Delta:H(4)C(2)O(-1)S(1) (S)', 'Delta:H(4)C(3) (H)', 'Delta:H(4)C(3)\
    \ (K)', 'Delta:H(4)C(3) (Protein N-term)', 'Delta:H(4)C(3)O(1) (C)', 'Delta:H(4)C(3)O(1)\
    \ (H)', 'Delta:H(4)C(3)O(1) (K)', 'Delta:H(4)C(3)O(1) (R)', 'Delta:H(4)C(5)O(1)\
    \ (R)', 'Delta:H(4)C(6) (K)', 'Delta:H(5)C(2) (P)', 'Delta:H(6)C(3)O(1) (C)',\
    \ 'Delta:H(6)C(3)O(1) (H)', 'Delta:H(6)C(3)O(1) (K)', 'Delta:H(6)C(3)O(1) (Protein\
    \ N-term)', 'Delta:H(6)C(6)O(1) (K)', 'Delta:H(6)C(7)O(4) (R)', 'Delta:H(8)C(6)O(1)\
    \ (K)', 'Delta:H(8)C(6)O(1) (Protein N-term)', 'Delta:H(8)C(6)O(2) (K)', 'Delta:Hg(1)\
    \ (C)', 'Delta:O(4) (W)', 'Delta:S(-1)Se(1) (C)', 'Delta:S(-1)Se(1) (M)', 'Delta:Se(1)\
    \ (C)', 'Deoxy (D)', 'Deoxy (S)', 'Deoxy (T)', 'Deoxyhypusine (K)', 'Deoxyhypusine\
    \ (Q)', 'DeStreak (C)', 'Dethiomethyl (M)', 'dHex (N)', 'dHex (S)', 'dHex (T)',\
    \ 'dHex(1)Hex(1) (S)', 'dHex(1)Hex(1) (T)', 'dHex(1)Hex(1)HexA(1)HexNAc(3) (S)',\
    \ 'dHex(1)Hex(1)HexA(1)HexNAc(3) (T)', 'dHex(1)Hex(1)HexNAc(1)Kdn(1) (S)', 'dHex(1)Hex(1)HexNAc(1)Kdn(1)\
    \ (T)', 'dHex(1)Hex(1)HexNAc(1)NeuAc(1) (S)', 'dHex(1)Hex(1)HexNAc(1)NeuAc(1)\
    \ (T)', 'dHex(1)Hex(1)HexNAc(1)NeuGc(1) (S)', 'dHex(1)Hex(1)HexNAc(1)NeuGc(1)\
    \ (T)', 'dHex(1)Hex(1)HexNAc(2)Kdn(1) (S)', 'dHex(1)Hex(1)HexNAc(2)Kdn(1) (T)',\
    \ 'dHex(1)Hex(1)HexNAc(2)NeuAc(1) (S)', 'dHex(1)Hex(1)HexNAc(2)NeuAc(1) (T)',\
    \ 'dHex(1)Hex(1)HexNAc(2)NeuAc(1)Sulf(1) (S)', 'dHex(1)Hex(1)HexNAc(2)NeuAc(1)Sulf(1)\
    \ (T)', 'dHex(1)Hex(1)HexNAc(2)NeuAc(2) (S)', 'dHex(1)Hex(1)HexNAc(2)NeuAc(2)\
    \ (T)', 'dHex(1)Hex(1)HexNAc(2)Sulf(1) (S)', 'dHex(1)Hex(1)HexNAc(2)Sulf(1) (T)',\
    \ 'dHex(1)Hex(1)HexNAc(3) (S)', 'dHex(1)Hex(1)HexNAc(3) (T)', 'dHex(1)Hex(1)HexNAc(3)NeuAc(1)\
    \ (S)', 'dHex(1)Hex(1)HexNAc(3)NeuAc(1) (T)', 'dHex(1)Hex(1)HexNAc(3)NeuAc(1)Sulf(1)\
    \ (S)', 'dHex(1)Hex(1)HexNAc(3)NeuAc(1)Sulf(1) (T)', 'dHex(1)Hex(1)HexNAc(3)NeuGc(1)\
    \ (S)', 'dHex(1)Hex(1)HexNAc(3)NeuGc(1) (T)', 'dHex(1)Hex(1)HexNAc(3)Sulf(1) (S)',\
    \ 'dHex(1)Hex(1)HexNAc(3)Sulf(1) (T)', 'dHex(1)Hex(1)HexNAc(4) (S)', 'dHex(1)Hex(1)HexNAc(4)\
    \ (T)', 'dHex(1)Hex(2) (S)', 'dHex(1)Hex(2) (T)', 'dHex(1)Hex(2)HexA(1) (S)',\
    \ 'dHex(1)Hex(2)HexA(1) (T)', 'dHex(1)Hex(2)HexA(1)HexNAc(1) (S)', 'dHex(1)Hex(2)HexA(1)HexNAc(1)\
    \ (T)', 'dHex(1)Hex(2)HexA(1)HexNAc(1)Sulf(1) (S)', 'dHex(1)Hex(2)HexA(1)HexNAc(1)Sulf(1)\
    \ (T)', 'dHex(1)Hex(2)HexA(1)HexNAc(2) (S)', 'dHex(1)Hex(2)HexA(1)HexNAc(2) (T)',\
    \ 'dHex(1)Hex(2)HexNAc(1) (S)', 'dHex(1)Hex(2)HexNAc(1) (T)', 'dHex(1)Hex(2)HexNAc(1)NeuAc(2)\
    \ (S)', 'dHex(1)Hex(2)HexNAc(1)NeuAc(2) (T)', 'dHex(1)Hex(2)HexNAc(1)Sulf(1) (S)',\
    \ 'dHex(1)Hex(2)HexNAc(1)Sulf(1) (T)', 'dHex(1)Hex(2)HexNAc(2)NeuAc(1)Sulf(1)\
    \ (S)', 'dHex(1)Hex(2)HexNAc(2)NeuAc(1)Sulf(1) (T)', 'dHex(1)Hex(2)HexNAc(2)NeuAc(2)\
    \ (S)', 'dHex(1)Hex(2)HexNAc(2)NeuAc(2) (T)', 'dHex(1)Hex(2)HexNAc(2)NeuAc(2)Sulf(1)\
    \ (S)', 'dHex(1)Hex(2)HexNAc(2)NeuAc(2)Sulf(1) (T)', 'dHex(1)Hex(2)HexNAc(2)NeuGc(1)\
    \ (N)', 'dHex(1)Hex(2)HexNAc(2)NeuGc(1) (S)', 'dHex(1)Hex(2)HexNAc(2)NeuGc(1)\
    \ (T)', 'dHex(1)Hex(2)HexNAc(2)NeuGc(2) (S)', 'dHex(1)Hex(2)HexNAc(2)NeuGc(2)\
    \ (T)', 'dHex(1)Hex(2)HexNAc(2)NeuGc(3) (S)', 'dHex(1)Hex(2)HexNAc(2)NeuGc(3)\
    \ (T)', 'dHex(1)Hex(2)HexNAc(2)Pent(1) (N)', 'dHex(1)Hex(2)HexNAc(2)Sulf(1) (S)',\
    \ 'dHex(1)Hex(2)HexNAc(2)Sulf(1) (T)', 'dHex(1)Hex(2)HexNAc(3) (N)', 'dHex(1)Hex(2)HexNAc(3)\
    \ (S)', 'dHex(1)Hex(2)HexNAc(3) (T)', 'dHex(1)Hex(2)HexNAc(3)NeuAc(1) (S)', 'dHex(1)Hex(2)HexNAc(3)NeuAc(1)\
    \ (T)', 'dHex(1)Hex(2)HexNAc(3)NeuAc(1)Sulf(1) (S)', 'dHex(1)Hex(2)HexNAc(3)NeuAc(1)Sulf(1)\
    \ (T)', 'dHex(1)Hex(2)HexNAc(3)Sulf(1) (S)', 'dHex(1)Hex(2)HexNAc(3)Sulf(1) (T)',\
    \ 'dHex(1)Hex(2)HexNAc(4) (N)', 'dHex(1)Hex(2)HexNAc(4) (S)', 'dHex(1)Hex(2)HexNAc(4)\
    \ (T)', 'dHex(1)Hex(2)HexNAc(4)NeuAc(1) (S)', 'dHex(1)Hex(2)HexNAc(4)NeuAc(1)\
    \ (T)', 'dHex(1)Hex(2)HexNAc(4)NeuAc(2) (S)', 'dHex(1)Hex(2)HexNAc(4)NeuAc(2)\
    \ (T)', 'dHex(1)Hex(2)HexNAc(4)Sulf(2) (S)', 'dHex(1)Hex(2)HexNAc(4)Sulf(2) (T)',\
    \ 'dHex(1)Hex(3) (S)', 'dHex(1)Hex(3) (T)', 'dHex(1)Hex(3)HexA(1)HexNAc(1) (S)',\
    \ 'dHex(1)Hex(3)HexA(1)HexNAc(1) (T)', 'dHex(1)Hex(3)HexA(1)HexNAc(1)Sulf(1) (S)',\
    \ 'dHex(1)Hex(3)HexA(1)HexNAc(1)Sulf(1) (T)', 'dHex(1)Hex(3)HexA(1)HexNAc(2) (S)',\
    \ 'dHex(1)Hex(3)HexA(1)HexNAc(2) (T)', 'dHex(1)Hex(3)HexA(1)HexNAc(2)Sulf(1) (S)',\
    \ 'dHex(1)Hex(3)HexA(1)HexNAc(2)Sulf(1) (T)', 'dHex(1)Hex(3)HexA(1)HexNAc(3)Sulf(1)\
    \ (S)', 'dHex(1)Hex(3)HexA(1)HexNAc(3)Sulf(1) (T)', 'dHex(1)Hex(3)HexA(2)HexNAc(2)\
    \ (S)', 'dHex(1)Hex(3)HexA(2)HexNAc(2) (T)', 'dHex(1)Hex(3)HexNAc(1) (S)', 'dHex(1)Hex(3)HexNAc(1)\
    \ (T)', 'dHex(1)Hex(3)HexNAc(1)Sulf(1) (S)', 'dHex(1)Hex(3)HexNAc(1)Sulf(1) (T)',\
    \ 'dHex(1)Hex(3)HexNAc(2) (N)', 'dHex(1)Hex(3)HexNAc(2) (S)', 'dHex(1)Hex(3)HexNAc(2)\
    \ (T)', 'dHex(1)Hex(3)HexNAc(2)NeuGc(1) (S)', 'dHex(1)Hex(3)HexNAc(2)NeuGc(1)\
    \ (T)', 'dHex(1)Hex(3)HexNAc(2)Pent(1) (N)', 'dHex(1)Hex(3)HexNAc(2)Sulf(1) (N)',\
    \ 'dHex(1)Hex(3)HexNAc(2)Sulf(1) (S)', 'dHex(1)Hex(3)HexNAc(2)Sulf(1) (T)', 'dHex(1)Hex(3)HexNAc(3)\
    \ (N)', 'dHex(1)Hex(3)HexNAc(3) (S)', 'dHex(1)Hex(3)HexNAc(3) (T)', 'dHex(1)Hex(3)HexNAc(3)NeuAc(2)\
    \ (S)', 'dHex(1)Hex(3)HexNAc(3)NeuAc(2) (T)', 'dHex(1)Hex(3)HexNAc(3)Pent(1) (N)',\
    \ 'dHex(1)Hex(3)HexNAc(3)Pent(2) (N)', 'dHex(1)Hex(3)HexNAc(3)Pent(3) (N)', 'dHex(1)Hex(3)HexNAc(3)Sulf(1)\
    \ (S)', 'dHex(1)Hex(3)HexNAc(3)Sulf(1) (T)', 'dHex(1)Hex(3)HexNAc(4) (N)', 'dHex(1)Hex(3)HexNAc(4)\
    \ (S)', 'dHex(1)Hex(3)HexNAc(4) (T)', 'dHex(1)Hex(3)HexNAc(4)NeuAc(1) (N)', 'dHex(1)Hex(3)HexNAc(4)Pent(1)\
    \ (N)', 'dHex(1)Hex(3)HexNAc(4)Pent(2) (N)', 'dHex(1)Hex(3)HexNAc(4)Pent(3) (N)',\
    \ 'dHex(1)Hex(3)HexNAc(4)Sulf(1) (N)', 'dHex(1)Hex(3)HexNAc(5) (N)', 'dHex(1)Hex(3)HexNAc(5)\
    \ (S)', 'dHex(1)Hex(3)HexNAc(5) (T)', 'dHex(1)Hex(3)HexNAc(5)NeuAc(1) (N)', 'dHex(1)Hex(3)HexNAc(5)NeuAc(1)\
    \ (S)', 'dHex(1)Hex(3)HexNAc(5)NeuAc(1) (T)', 'dHex(1)Hex(3)HexNAc(5)Sulf(1) (N)',\
    \ 'dHex(1)Hex(3)HexNAc(6) (N)', 'dHex(1)Hex(3)HexNAc(6) (S)', 'dHex(1)Hex(3)HexNAc(6)\
    \ (T)', 'dHex(1)Hex(3)HexNAc(6)Sulf(1) (N)', 'dHex(1)Hex(4) (S)', 'dHex(1)Hex(4)\
    \ (T)', 'dHex(1)Hex(4)HexA(1) (S)', 'dHex(1)Hex(4)HexA(1) (T)', 'dHex(1)Hex(4)HexA(1)HexNAc(2)\
    \ (S)', 'dHex(1)Hex(4)HexA(1)HexNAc(2) (T)', 'dHex(1)Hex(4)HexA(1)HexNAc(3)Sulf(1)\
    \ (S)', 'dHex(1)Hex(4)HexA(1)HexNAc(3)Sulf(1) (T)', 'dHex(1)Hex(4)HexNAc(1)Pent(1)\
    \ (N)', 'dHex(1)Hex(4)HexNAc(2) (N)', 'dHex(1)Hex(4)HexNAc(2) (S)', 'dHex(1)Hex(4)HexNAc(2)\
    \ (T)', 'dHex(1)Hex(4)HexNAc(2)Pent(1) (N)', 'dHex(1)Hex(4)HexNAc(3) (N)', 'dHex(1)Hex(4)HexNAc(3)NeuAc(1)\
    \ (N)', 'dHex(1)Hex(4)HexNAc(3)NeuAc(1) (S)', 'dHex(1)Hex(4)HexNAc(3)NeuAc(1)\
    \ (T)', 'dHex(1)Hex(4)HexNAc(3)NeuAc(1)Sulf(1) (N)', 'dHex(1)Hex(4)HexNAc(3)NeuGc(1)\
    \ (N)', 'dHex(1)Hex(4)HexNAc(3)Pent(1) (N)', 'dHex(1)Hex(4)HexNAc(3)Sulf(1) (N)',\
    \ 'dHex(1)Hex(4)HexNAc(4) (N)', 'dHex(1)Hex(4)HexNAc(4) (S)', 'dHex(1)Hex(4)HexNAc(4)\
    \ (T)', 'dHex(1)Hex(4)HexNAc(4)NeuAc(1) (N)', 'dHex(1)Hex(4)HexNAc(4)NeuAc(1)\
    \ (S)', 'dHex(1)Hex(4)HexNAc(4)NeuAc(1) (T)', 'dHex(1)Hex(4)HexNAc(4)NeuAc(1)Sulf(1)\
    \ (N)', 'dHex(1)Hex(4)HexNAc(4)Pent(1) (N)', 'dHex(1)Hex(4)HexNAc(4)Sulf(1) (N)',\
    \ 'dHex(1)Hex(4)HexNAc(5) (N)', 'dHex(1)Hex(4)HexNAc(5)Sulf(1) (N)', 'dHex(1)Hex(5)\
    \ (S)', 'dHex(1)Hex(5) (T)', 'dHex(1)Hex(5)HexA(1)HexNAc(3)Sulf(1) (N)', 'dHex(1)Hex(5)HexA(1)HexNAc(3)Sulf(2)\
    \ (N)', 'dHex(1)Hex(5)HexNAc(2) (N)', 'dHex(1)Hex(5)HexNAc(2)Pent(1) (N)', 'dHex(1)Hex(5)HexNAc(3)\
    \ (N)', 'dHex(1)Hex(5)HexNAc(3)NeuAc(1) (N)', 'dHex(1)Hex(5)HexNAc(3)NeuAc(1)Sulf(1)\
    \ (N)', 'dHex(1)Hex(5)HexNAc(3)NeuGc(1) (N)', 'dHex(1)Hex(5)HexNAc(3)NeuGc(1)Sulf(1)\
    \ (N)', 'dHex(1)Hex(5)HexNAc(3)Sulf(1) (N)', 'dHex(1)Hex(5)HexNAc(4) (N)', 'dHex(1)Hex(5)HexNAc(4)Me(2)Pent(1)\
    \ (N)', 'dHex(1)Hex(5)HexNAc(4)NeuAc(1) (N)', 'dHex(1)Hex(5)HexNAc(4)NeuAc(2)\
    \ (N)', 'dHex(1)Hex(5)HexNAc(4)Pent(1) (N)', 'dHex(1)Hex(5)HexNAc(4)Sulf(1) (N)',\
    \ 'dHex(1)Hex(5)HexNAc(4)Sulf(2) (N)', 'dHex(1)Hex(5)HexNAc(5) (N)', 'dHex(1)Hex(6)\
    \ (S)', 'dHex(1)Hex(6) (T)', 'dHex(1)Hex(6)HexNAc(2) (N)', 'dHex(1)Hex(6)HexNAc(3)\
    \ (N)', 'dHex(1)Hex(6)HexNAc(3)Sulf(1) (N)', 'dHex(1)Hex(6)HexNAc(4) (N)', 'dHex(1)Hex(7)HexNAc(2)\
    \ (N)', 'dHex(1)Hex(7)HexNAc(3) (N)', 'dHex(1)Hex(7)HexNAc(3)Phos(1) (N)', 'dHex(1)Hex(7)HexNAc(3)Sulf(1)\
    \ (N)', 'dHex(1)Hex(7)HexNAc(4) (N)', 'dHex(1)Hex(8)HexNAc(2) (N)', 'dHex(1)HexNAc(3)\
    \ (S)', 'dHex(1)HexNAc(3) (T)', 'dHex(1)HexNAc(4) (S)', 'dHex(1)HexNAc(4) (T)',\
    \ 'dHex(1)HexNAc(5) (S)', 'dHex(1)HexNAc(5) (T)', 'dHex(2)Hex(1)HexNAc(1)Kdn(1)\
    \ (S)', 'dHex(2)Hex(1)HexNAc(1)Kdn(1) (T)', 'dHex(2)Hex(1)HexNAc(2)Kdn(1) (S)',\
    \ 'dHex(2)Hex(1)HexNAc(2)Kdn(1) (T)', 'dHex(2)Hex(1)HexNAc(2)NeuAc(1) (S)', 'dHex(2)Hex(1)HexNAc(2)NeuAc(1)\
    \ (T)', 'dHex(2)Hex(1)HexNAc(2)NeuGc(1) (S)', 'dHex(2)Hex(1)HexNAc(2)NeuGc(1)\
    \ (T)', 'dHex(2)Hex(1)HexNAc(3) (S)', 'dHex(2)Hex(1)HexNAc(3) (T)', 'dHex(2)Hex(1)HexNAc(4)Sulf(1)\
    \ (S)', 'dHex(2)Hex(1)HexNAc(4)Sulf(1) (T)', 'dHex(2)Hex(2) (S)', 'dHex(2)Hex(2)\
    \ (T)', 'dHex(2)Hex(2)HexA(1) (S)', 'dHex(2)Hex(2)HexA(1) (T)', 'dHex(2)Hex(2)HexA(1)HexNAc(1)\
    \ (S)', 'dHex(2)Hex(2)HexA(1)HexNAc(1) (T)', 'dHex(2)Hex(2)HexA(1)HexNAc(2)Sulf(1)\
    \ (S)', 'dHex(2)Hex(2)HexA(1)HexNAc(2)Sulf(1) (T)', 'dHex(2)Hex(2)HexNAc(1) (S)',\
    \ 'dHex(2)Hex(2)HexNAc(1) (T)', 'dHex(2)Hex(2)HexNAc(2) (N)', 'dHex(2)Hex(2)HexNAc(2)\
    \ (S)', 'dHex(2)Hex(2)HexNAc(2) (T)', 'dHex(2)Hex(2)HexNAc(2)Kdn(1) (S)', 'dHex(2)Hex(2)HexNAc(2)Kdn(1)\
    \ (T)', 'dHex(2)Hex(2)HexNAc(2)NeuAc(1) (S)', 'dHex(2)Hex(2)HexNAc(2)NeuAc(1)\
    \ (T)', 'dHex(2)Hex(2)HexNAc(2)NeuAc(1)Sulf(1) (S)', 'dHex(2)Hex(2)HexNAc(2)NeuAc(1)Sulf(1)\
    \ (T)', 'dHex(2)Hex(2)HexNAc(2)NeuGc(1) (S)', 'dHex(2)Hex(2)HexNAc(2)NeuGc(1)\
    \ (T)', 'dHex(2)Hex(2)HexNAc(2)Sulf(1) (S)', 'dHex(2)Hex(2)HexNAc(2)Sulf(1) (T)',\
    \ 'dHex(2)Hex(2)HexNAc(2)Sulf(2) (S)', 'dHex(2)Hex(2)HexNAc(2)Sulf(2) (T)', 'dHex(2)Hex(2)HexNAc(3)\
    \ (N)', 'dHex(2)Hex(2)HexNAc(3) (S)', 'dHex(2)Hex(2)HexNAc(3) (T)', 'dHex(2)Hex(2)HexNAc(3)NeuAc(1)\
    \ (S)', 'dHex(2)Hex(2)HexNAc(3)NeuAc(1) (T)', 'dHex(2)Hex(2)HexNAc(3)NeuGc(1)\
    \ (S)', 'dHex(2)Hex(2)HexNAc(3)NeuGc(1) (T)', 'dHex(2)Hex(2)HexNAc(3)Sulf(1) (S)',\
    \ 'dHex(2)Hex(2)HexNAc(3)Sulf(1) (T)', 'dHex(2)Hex(2)HexNAc(4) (S)', 'dHex(2)Hex(2)HexNAc(4)\
    \ (T)', 'dHex(2)Hex(2)HexNAc(4)Sulf(2) (S)', 'dHex(2)Hex(2)HexNAc(4)Sulf(2) (T)',\
    \ 'dHex(2)Hex(2)HexNAc(5) (S)', 'dHex(2)Hex(2)HexNAc(5) (T)', 'dHex(2)Hex(2)HexNAc(6)Sulf(1)\
    \ (S)', 'dHex(2)Hex(2)HexNAc(6)Sulf(1) (T)', 'dHex(2)Hex(3) (S)', 'dHex(2)Hex(3)\
    \ (T)', 'dHex(2)Hex(3)HexA(1)HexNAc(1)Sulf(1) (S)', 'dHex(2)Hex(3)HexA(1)HexNAc(1)Sulf(1)\
    \ (T)', 'dHex(2)Hex(3)HexA(1)HexNAc(2)Sulf(1) (S)', 'dHex(2)Hex(3)HexA(1)HexNAc(2)Sulf(1)\
    \ (T)', 'dHex(2)Hex(3)HexA(1)HexNAc(3)Sulf(1) (S)', 'dHex(2)Hex(3)HexA(1)HexNAc(3)Sulf(1)\
    \ (T)', 'dHex(2)Hex(3)HexNAc(1)Sulf(1) (S)', 'dHex(2)Hex(3)HexNAc(1)Sulf(1) (T)',\
    \ 'dHex(2)Hex(3)HexNAc(2) (N)', 'dHex(2)Hex(3)HexNAc(2) (S)', 'dHex(2)Hex(3)HexNAc(2)\
    \ (T)', 'dHex(2)Hex(3)HexNAc(2)NeuGc(1) (S)', 'dHex(2)Hex(3)HexNAc(2)NeuGc(1)\
    \ (T)', 'dHex(2)Hex(3)HexNAc(2)Sulf(1) (S)', 'dHex(2)Hex(3)HexNAc(2)Sulf(1) (T)',\
    \ 'dHex(2)Hex(3)HexNAc(3) (N)', 'dHex(2)Hex(3)HexNAc(3) (S)', 'dHex(2)Hex(3)HexNAc(3)\
    \ (T)', 'dHex(2)Hex(3)HexNAc(3)NeuAc(1) (S)', 'dHex(2)Hex(3)HexNAc(3)NeuAc(1)\
    \ (T)', 'dHex(2)Hex(3)HexNAc(3)NeuAc(2) (S)', 'dHex(2)Hex(3)HexNAc(3)NeuAc(2)\
    \ (T)', 'dHex(2)Hex(3)HexNAc(3)Pent(1) (N)', 'dHex(2)Hex(3)HexNAc(3)Pent(2) (N)',\
    \ 'dHex(2)Hex(3)HexNAc(3)Sulf(1) (S)', 'dHex(2)Hex(3)HexNAc(3)Sulf(1) (T)', 'dHex(2)Hex(3)HexNAc(4)\
    \ (N)', 'dHex(2)Hex(3)HexNAc(4) (S)', 'dHex(2)Hex(3)HexNAc(4) (T)', 'dHex(2)Hex(3)HexNAc(4)NeuAc(1)\
    \ (N)', 'dHex(2)Hex(3)HexNAc(4)Pent(1) (N)', 'dHex(2)Hex(3)HexNAc(4)Pent(2) (N)',\
    \ 'dHex(2)Hex(3)HexNAc(5) (N)', 'dHex(2)Hex(3)HexNAc(5) (S)', 'dHex(2)Hex(3)HexNAc(5)\
    \ (T)', 'dHex(2)Hex(3)HexNAc(6) (N)', 'dHex(2)Hex(4) (S)', 'dHex(2)Hex(4) (T)',\
    \ 'dHex(2)Hex(4)HexA(1)HexNAc(3)Sulf(1) (S)', 'dHex(2)Hex(4)HexA(1)HexNAc(3)Sulf(1)\
    \ (T)', 'dHex(2)Hex(4)HexNAc(1) (S)', 'dHex(2)Hex(4)HexNAc(1) (T)', 'dHex(2)Hex(4)HexNAc(2)\
    \ (N)', 'dHex(2)Hex(4)HexNAc(2) (S)', 'dHex(2)Hex(4)HexNAc(2) (T)', 'dHex(2)Hex(4)HexNAc(3)\
    \ (N)', 'dHex(2)Hex(4)HexNAc(3)NeuAc(1)Sulf(1) (N)', 'dHex(2)Hex(4)HexNAc(3)Pent(1)\
    \ (N)', 'dHex(2)Hex(4)HexNAc(4) (N)', 'dHex(2)Hex(4)HexNAc(4) (S)', 'dHex(2)Hex(4)HexNAc(4)\
    \ (T)', 'dHex(2)Hex(4)HexNAc(4)Pent(1) (N)', 'dHex(2)Hex(4)HexNAc(4)Sulf(1) (N)',\
    \ 'dHex(2)Hex(4)HexNAc(5) (N)', 'dHex(2)Hex(4)HexNAc(5) (S)', 'dHex(2)Hex(4)HexNAc(5)\
    \ (T)', 'dHex(2)Hex(5)HexNAc(2)Me(1) (S)', 'dHex(2)Hex(5)HexNAc(2)Me(1) (T)',\
    \ 'dHex(2)Hex(5)HexNAc(3)Pent(1) (N)', 'dHex(2)Hex(5)HexNAc(4) (N)', 'dHex(2)HexNAc(2)Kdn(1)\
    \ (S)', 'dHex(2)HexNAc(2)Kdn(1) (T)', 'dHex(2)HexNAc(5) (S)', 'dHex(2)HexNAc(5)\
    \ (T)', 'dHex(2)HexNAc(7) (S)', 'dHex(2)HexNAc(7) (T)', 'dHex(3)Hex(1)HexNAc(2)Kdn(1)\
    \ (S)', 'dHex(3)Hex(1)HexNAc(2)Kdn(1) (T)', 'dHex(3)Hex(1)HexNAc(3)Kdn(1) (S)',\
    \ 'dHex(3)Hex(1)HexNAc(3)Kdn(1) (T)', 'dHex(3)Hex(2)HexA(1)HexNAc(2)Sulf(1) (S)',\
    \ 'dHex(3)Hex(2)HexA(1)HexNAc(2)Sulf(1) (T)', 'dHex(3)Hex(2)HexNAc(2) (S)', 'dHex(3)Hex(2)HexNAc(2)\
    \ (T)', 'dHex(3)Hex(2)HexNAc(2)Kdn(1) (S)', 'dHex(3)Hex(2)HexNAc(2)Kdn(1) (T)',\
    \ 'dHex(3)Hex(2)HexNAc(3) (S)', 'dHex(3)Hex(2)HexNAc(3) (T)', 'dHex(3)Hex(2)HexNAc(3)Kdn(1)\
    \ (S)', 'dHex(3)Hex(2)HexNAc(3)Kdn(1) (T)', 'dHex(3)Hex(2)HexNAc(4) (S)', 'dHex(3)Hex(2)HexNAc(4)\
    \ (T)', 'dHex(3)Hex(2)HexNAc(4)Sulf(2) (S)', 'dHex(3)Hex(2)HexNAc(4)Sulf(2) (T)',\
    \ 'dHex(3)Hex(3)HexNAc(1) (S)', 'dHex(3)Hex(3)HexNAc(1) (T)', 'dHex(3)Hex(3)HexNAc(2)\
    \ (S)', 'dHex(3)Hex(3)HexNAc(2) (T)', 'dHex(3)Hex(3)HexNAc(3) (S)', 'dHex(3)Hex(3)HexNAc(3)\
    \ (T)', 'dHex(3)Hex(3)HexNAc(3)NeuAc(1) (S)', 'dHex(3)Hex(3)HexNAc(3)NeuAc(1)\
    \ (T)', 'dHex(3)Hex(3)HexNAc(3)Pent(1) (N)', 'dHex(3)Hex(3)HexNAc(4) (N)', 'dHex(3)Hex(3)HexNAc(4)Pent(1)\
    \ (N)', 'dHex(3)Hex(4)HexNAc(4) (N)', 'dHex(3)Hex(4)HexNAc(4) (S)', 'dHex(3)Hex(4)HexNAc(4)\
    \ (T)', 'dHex(3)Hex(4)HexNAc(4)Sulf(1) (N)', 'dHex(3)HexNAc(3)Kdn(1) (S)', 'dHex(3)HexNAc(3)Kdn(1)\
    \ (T)', 'dHex(4)Hex(1)HexNAc(1)Kdn(2) (S)', 'dHex(4)Hex(1)HexNAc(1)Kdn(2) (T)',\
    \ 'dHex(4)Hex(1)HexNAc(2)Kdn(1) (S)', 'dHex(4)Hex(1)HexNAc(2)Kdn(1) (T)', 'dHex(4)Hex(1)HexNAc(3)Kdn(1)\
    \ (S)', 'dHex(4)Hex(1)HexNAc(3)Kdn(1) (T)', 'dHex(4)Hex(2)HexNAc(2)Kdn(1) (S)',\
    \ 'dHex(4)Hex(2)HexNAc(2)Kdn(1) (T)', 'dHex(4)Hex(2)HexNAc(3) (S)', 'dHex(4)Hex(2)HexNAc(3)\
    \ (T)', 'dHex(4)Hex(3)HexNAc(2)NeuAc(1) (S)', 'dHex(4)Hex(3)HexNAc(2)NeuAc(1)\
    \ (T)', 'dHex(4)Hex(3)HexNAc(3) (S)', 'dHex(4)Hex(3)HexNAc(3) (T)', 'dHex(4)HexNAc(3)Kdn(1)\
    \ (S)', 'dHex(4)HexNAc(3)Kdn(1) (T)', 'DHP (C)', 'Diacylglycerol (C)', 'DiART6plex\
    \ (K)', 'DiART6plex (N-term)', 'DiART6plex (Protein N-term)', 'DiART6plex (Y)',\
    \ 'DiART6plex115 (K)', 'DiART6plex115 (N-term)', 'DiART6plex115 (Protein N-term)',\
    \ 'DiART6plex115 (Y)', 'DiART6plex116/119 (K)', 'DiART6plex116/119 (N-term)',\
    \ 'DiART6plex116/119 (Protein N-term)', 'DiART6plex116/119 (Y)', 'DiART6plex117\
    \ (K)', 'DiART6plex117 (N-term)', 'DiART6plex117 (Protein N-term)', 'DiART6plex117\
    \ (Y)', 'DiART6plex118 (K)', 'DiART6plex118 (N-term)', 'DiART6plex118 (Protein\
    \ N-term)', 'DiART6plex118 (Y)', 'Dibromo (Y)', 'Dicarbamidomethyl (C)', 'Dicarbamidomethyl\
    \ (H)', 'Dicarbamidomethyl (K)', 'Dicarbamidomethyl (N-term)', 'Dicarbamidomethyl\
    \ (R)', 'dichlorination (C)', 'dichlorination (Y)', 'Didehydro (C-term K)', 'Didehydro\
    \ (S)', 'Didehydro (T)', 'Didehydro (Y)', 'Didehydroretinylidene (K)', 'Diethyl\
    \ (K)', 'Diethyl (N-term)', 'Diethylphosphate (C)', 'Diethylphosphate (H)', 'Diethylphosphate\
    \ (K)', 'Diethylphosphate (N-term)', 'Diethylphosphate (S)', 'Diethylphosphate\
    \ (T)', 'Diethylphosphate (Y)', 'Diethylphosphothione (C)', 'Diethylphosphothione\
    \ (H)', 'Diethylphosphothione (K)', 'Diethylphosphothione (S)', 'Diethylphosphothione\
    \ (T)', 'Diethylphosphothione (Y)', 'Difuran (Y)', 'Dihydroxyimidazolidine (R)',\
    \ 'Diiodo (H)', 'Diiodo (Y)', 'Diironsubcluster (C)', 'Diisopropylphosphate (K)',\
    \ 'Diisopropylphosphate (N-term)', 'Diisopropylphosphate (S)', 'Diisopropylphosphate\
    \ (T)', 'Diisopropylphosphate (Y)', 'DiLeu4plex (K)', 'DiLeu4plex (N-term)', 'DiLeu4plex\
    \ (Y)', 'DiLeu4plex115 (K)', 'DiLeu4plex115 (N-term)', 'DiLeu4plex115 (Y)', 'DiLeu4plex117\
    \ (K)', 'DiLeu4plex117 (N-term)', 'DiLeu4plex117 (Y)', 'DiLeu4plex118 (K)', 'DiLeu4plex118\
    \ (N-term)', 'DiLeu4plex118 (Y)', 'Dimethyl (K)', 'Dimethyl (N)', 'Dimethyl (N-term)',\
    \ 'Dimethyl (Protein N-term P)', 'Dimethyl (Protein N-term)', 'Dimethyl (R)',\
    \ 'Dimethyl:2H(2)13C (K)', 'Dimethyl:2H(2)13C (N)', 'Dimethyl:2H(2)13C (N-term)',\
    \ 'Dimethyl:2H(2)13C (Protein N-term P)', 'Dimethyl:2H(2)13C (R)', 'Dimethyl:2H(4)\
    \ (K)', 'Dimethyl:2H(4) (N-term)', 'Dimethyl:2H(4) (Protein N-term)', 'Dimethyl:2H(4)\
    \ (R)', 'Dimethyl:2H(4)13C(2) (K)', 'Dimethyl:2H(4)13C(2) (N-term)', 'Dimethyl:2H(4)13C(2)\
    \ (Protein N-term)', 'Dimethyl:2H(4)13C(2) (R)', 'Dimethyl:2H(6) (K)', 'Dimethyl:2H(6)\
    \ (N-term)', 'Dimethyl:2H(6) (R)', 'Dimethyl:2H(6)13C(2) (K)', 'Dimethyl:2H(6)13C(2)\
    \ (N-term)', 'Dimethyl:2H(6)13C(2) (Protein N-term)', 'Dimethyl:2H(6)13C(2) (R)',\
    \ 'DimethylamineGMBS (C)', 'Dimethylaminoethyl (C)', 'DimethylArsino (C)', 'Dimethylphosphothione\
    \ (C)', 'Dimethylphosphothione (H)', 'Dimethylphosphothione (K)', 'Dimethylphosphothione\
    \ (S)', 'Dimethylphosphothione (T)', 'Dimethylphosphothione (Y)', 'DimethylpyrroleAdduct\
    \ (K)', 'Dioxidation (C)', 'Dioxidation (E)', 'Dioxidation (F)', 'Dioxidation\
    \ (I)', 'Dioxidation (K)', 'Dioxidation (L)', 'Dioxidation (M)', 'Dioxidation\
    \ (P)', 'Dioxidation (R)', 'Dioxidation (U)', 'Dioxidation (V)', 'Dioxidation\
    \ (W)', 'Dioxidation (Y)', 'Diphthamide (H)', 'Dipyridyl (C)', 'Dipyrrolylmethanemethyl\
    \ (C)', 'DMPO (C)', 'DMPO (H)', 'DMPO (Y)', 'DNCB_hapten (C)', 'DNCB_hapten (H)',\
    \ 'DNCB_hapten (K)', 'DNCB_hapten (Y)', 'dNIC (K)', 'dNIC (N-term)', 'DNPS (C)',\
    \ 'DNPS (W)', 'DTT (C)', 'DyLight-maleimide (C)', 'DYn-2 (C)', 'EDEDTIDVFQQQTGG\
    \ (K)', 'EDT-iodoacetyl-PEO-biotin (S)', 'EDT-iodoacetyl-PEO-biotin (T)', 'EDT-maleimide-PEO-biotin\
    \ (S)', 'EDT-maleimide-PEO-biotin (T)', 'EEEDVIEVYQEQTGG (K)', 'EGCG1 (C)', 'EGCG2\
    \ (C)', 'EHD-diphenylpentanone (C)', 'EHD-diphenylpentanone (M)', 'EQAT (C)',\
    \ 'EQAT:2H(5) (C)', 'EQIGG (K)', 'ESP (K)', 'ESP (N-term)', 'ESP:2H(10) (K)',\
    \ 'ESP:2H(10) (N-term)', 'Ethanedithiol (S)', 'Ethanedithiol (T)', 'Ethanolamine\
    \ (C)', 'Ethanolamine (C-term)', 'Ethanolamine (D)', 'Ethanolamine (E)', 'Ethanolyl\
    \ (C)', 'Ethanolyl (K)', 'Ethanolyl (R)', 'Ethoxyformyl (H)', 'Ethyl (C-term)',\
    \ 'Ethyl (D)', 'Ethyl (E)', 'Ethyl (K)', 'Ethyl (N-term)', 'Ethyl (Protein N-term)',\
    \ 'Ethyl+Deamidated (N)', 'Ethyl+Deamidated (Q)', 'ethylamino (S)', 'ethylamino\
    \ (T)', 'Ethylphosphate (K)', 'Ethylphosphate (N-term)', 'Ethylphosphate (S)',\
    \ 'Ethylphosphate (T)', 'Ethylphosphate (Y)', 'ethylsulfonylethyl (C)', 'ethylsulfonylethyl\
    \ (H)', 'ethylsulfonylethyl (K)', 'ExacTagAmine (K)', 'ExacTagThiol (C)', 'FAD\
    \ (C)', 'FAD (H)', 'FAD (Y)', 'Farnesyl (C)', 'Fluorescein (C)', 'Fluorescein-tyramine\
    \ (Y)', 'Fluoro (A)', 'Fluoro (F)', 'Fluoro (W)', 'Fluoro (Y)', 'FMN (S)', 'FMN\
    \ (T)', 'FMNC (C)', 'FMNH (C)', 'FMNH (H)', 'FNEM (C)', 'Formyl (K)', 'Formyl\
    \ (N-term)', 'Formyl (Protein N-term)', 'Formyl (S)', 'Formyl (T)', 'Formylasparagine\
    \ (H)', 'FormylMet (Protein N-term)', 'FP-Biotin (K)', 'FP-Biotin (S)', 'FP-Biotin\
    \ (T)', 'FP-Biotin (Y)', 'FTC (C)', 'FTC (K)', 'FTC (P)', 'FTC (R)', 'FTC (S)',\
    \ 'Furan (Y)', 'G-H1 (R)', 'Galactosyl (K)', 'Galactosyl (N-term)', 'GEE (Q)',\
    \ 'GeranylGeranyl (C)', 'GG (C)', 'GG (K)', 'GG (Protein N-term)', 'GG (S)', 'GG\
    \ (T)', 'GGQ (K)', 'GIST-Quat (K)', 'GIST-Quat (N-term)', 'GIST-Quat:2H(3) (K)',\
    \ 'GIST-Quat:2H(3) (N-term)', 'GIST-Quat:2H(6) (K)', 'GIST-Quat:2H(6) (N-term)',\
    \ 'GIST-Quat:2H(9) (K)', 'GIST-Quat:2H(9) (N-term)', 'Gln->Ala (Q)', 'Gln->Arg\
    \ (Q)', 'Gln->Asn (Q)', 'Gln->Asp (Q)', 'Gln->Cys (Q)', 'Gln->Glu (Q)', 'Gln->Gly\
    \ (Q)', 'Gln->His (Q)', 'Gln->Lys (Q)', 'Gln->Met (Q)', 'Gln->Phe (Q)', 'Gln->Pro\
    \ (Q)', 'Gln->pyro-Glu (N-term Q)', 'Gln->Ser (Q)', 'Gln->Thr (Q)', 'Gln->Trp\
    \ (Q)', 'Gln->Tyr (Q)', 'Gln->Val (Q)', 'Gln->Xle (Q)', 'Glu (E)', 'Glu (Protein\
    \ C-term)', 'Glu->Ala (E)', 'Glu->Arg (E)', 'Glu->Asn (E)', 'Glu->Asp (E)', 'Glu->Cys\
    \ (E)', 'Glu->Gln (E)', 'Glu->Gly (E)', 'Glu->His (E)', 'Glu->Lys (E)', 'Glu->Met\
    \ (E)', 'Glu->Phe (E)', 'Glu->Pro (E)', 'Glu->pyro-Glu (N-term E)', 'Glu->pyro-Glu+Methyl\
    \ (N-term E)', 'Glu->pyro-Glu+Methyl (N-term E)', 'Glu->pyro-Glu+Methyl:2H(2)13C\
    \ (N-term E)', 'Glu->pyro-Glu+Methyl:2H(2)13C(1) (N-term E)', 'Glu->Ser (E)',\
    \ 'Glu->Thr (E)', 'Glu->Trp (E)', 'Glu->Tyr (E)', 'Glu->Val (E)', 'Glu->Xle (E)',\
    \ 'glucosone (R)', 'Glucosylgalactosyl (K)', 'Glucuronyl (Protein N-term)', 'Glucuronyl\
    \ (S)', 'Glucuronyl (T)', 'GluGlu (E)', 'GluGlu (Protein C-term)', 'GluGluGlu\
    \ (E)', 'GluGluGlu (Protein C-term)', 'GluGluGluGlu (E)', 'GluGluGluGlu (Protein\
    \ C-term)', 'Gluratylation (K)', 'Glutathione (C)', 'Gly (K)', 'Gly (S)', 'Gly\
    \ (T)', 'Gly->Ala (G)', 'Gly->Arg (G)', 'Gly->Asn (G)', 'Gly->Asp (G)', 'Gly->Cys\
    \ (G)', 'Gly->Gln (G)', 'Gly->Glu (G)', 'Gly->His (G)', 'Gly->Lys (G)', 'Gly->Met\
    \ (G)', 'Gly->Phe (G)', 'Gly->Pro (G)', 'Gly->Ser (G)', 'Gly->Thr (G)', 'Gly->Trp\
    \ (G)', 'Gly->Tyr (G)', 'Gly->Val (G)', 'Gly->Xle (G)', 'Gly-loss+Amide (C-term\
    \ G)', 'Glycerophospho (S)', 'GlycerylPE (E)', 'glycidamide (K)', 'glycidamide\
    \ (N-term)', 'Glycosyl (P)', 'glyoxalAGE (R)', 'GNLLFLACYCIGG (K)', 'GPIanchor\
    \ (Protein C-term)', 'Guanidinyl (K)', 'Guanidinyl (N-term)', 'Haloxon (C)', 'Haloxon\
    \ (H)', 'Haloxon (K)', 'Haloxon (S)', 'Haloxon (T)', 'Haloxon (Y)', 'HCysteinyl\
    \ (C)', 'HCysThiolactone (K)', 'Heme (C)', 'Heme (H)', 'Hep (K)', 'Hep (N)', 'Hep\
    \ (Q)', 'Hep (R)', 'Hep (S)', 'Hep (T)', 'Hex (C)', 'Hex (K)', 'Hex (N)', 'Hex\
    \ (N-term)', 'Hex (R)', 'Hex (S)', 'Hex (T)', 'Hex (W)', 'Hex (Y)', 'Hex(1)HexA(1)\
    \ (S)', 'Hex(1)HexA(1) (T)', 'Hex(1)HexA(1)HexNAc(1) (S)', 'Hex(1)HexA(1)HexNAc(1)\
    \ (T)', 'Hex(1)HexA(1)HexNAc(2) (S)', 'Hex(1)HexA(1)HexNAc(2) (T)', 'Hex(1)HexNAc(1)\
    \ (N)', 'Hex(1)HexNAc(1) (S)', 'Hex(1)HexNAc(1) (T)', 'Hex(1)HexNAc(1)dHex(1)\
    \ (N)', 'Hex(1)HexNAc(1)dHex(1) (S)', 'Hex(1)HexNAc(1)dHex(1) (T)', 'Hex(1)HexNAc(1)dHex(1)Me(1)\
    \ (S)', 'Hex(1)HexNAc(1)dHex(1)Me(1) (T)', 'Hex(1)HexNAc(1)dHex(1)Me(2) (S)',\
    \ 'Hex(1)HexNAc(1)dHex(1)Me(2) (T)', 'Hex(1)HexNAc(1)Kdn(1)Sulf(1) (S)', 'Hex(1)HexNAc(1)Kdn(1)Sulf(1)\
    \ (T)', 'Hex(1)HexNAc(1)NeuAc(1) (N)', 'Hex(1)HexNAc(1)NeuAc(1) (S)', 'Hex(1)HexNAc(1)NeuAc(1)\
    \ (T)', 'Hex(1)HexNAc(1)NeuAc(1)Ac(1) (S)', 'Hex(1)HexNAc(1)NeuAc(1)Ac(1) (T)',\
    \ 'Hex(1)HexNAc(1)NeuAc(1)NeuGc(1) (S)', 'Hex(1)HexNAc(1)NeuAc(1)NeuGc(1) (T)',\
    \ 'Hex(1)HexNAc(1)NeuAc(1)Sulf(1) (S)', 'Hex(1)HexNAc(1)NeuAc(1)Sulf(1) (T)',\
    \ 'Hex(1)HexNAc(1)NeuAc(2) (N)', 'Hex(1)HexNAc(1)NeuAc(2) (S)', 'Hex(1)HexNAc(1)NeuAc(2)\
    \ (T)', 'Hex(1)HexNAc(1)NeuAc(2)Ac(1) (S)', 'Hex(1)HexNAc(1)NeuAc(2)Ac(1) (T)',\
    \ 'Hex(1)HexNAc(1)NeuAc(2)Ac(2) (S)', 'Hex(1)HexNAc(1)NeuAc(2)Ac(2) (T)', 'Hex(1)HexNAc(1)NeuAc(3)\
    \ (S)', 'Hex(1)HexNAc(1)NeuAc(3) (T)', 'Hex(1)HexNAc(1)NeuGc(1) (S)', 'Hex(1)HexNAc(1)NeuGc(1)\
    \ (T)', 'Hex(1)HexNAc(1)NeuGc(2) (S)', 'Hex(1)HexNAc(1)NeuGc(2) (T)', 'Hex(1)HexNAc(1)NeuGc(3)\
    \ (S)', 'Hex(1)HexNAc(1)NeuGc(3) (T)', 'Hex(1)HexNAc(1)NeuGc(4) (S)', 'Hex(1)HexNAc(1)NeuGc(4)\
    \ (T)', 'Hex(1)HexNAc(1)NeuGc(5) (S)', 'Hex(1)HexNAc(1)NeuGc(5) (T)', 'Hex(1)HexNAc(1)Phos(1)\
    \ (S)', 'Hex(1)HexNAc(1)Phos(1) (T)', 'Hex(1)HexNAc(1)Sulf(1) (S)', 'Hex(1)HexNAc(1)Sulf(1)\
    \ (T)', 'Hex(1)HexNAc(2) (N)', 'Hex(1)HexNAc(2) (S)', 'Hex(1)HexNAc(2) (T)', 'Hex(1)HexNAc(2)dHex(1)\
    \ (N)', 'Hex(1)HexNAc(2)dHex(1) (S)', 'Hex(1)HexNAc(2)dHex(1) (T)', 'Hex(1)HexNAc(2)dHex(1)Pent(1)\
    \ (N)', 'Hex(1)HexNAc(2)dHex(2) (N)', 'Hex(1)HexNAc(2)dHex(2) (S)', 'Hex(1)HexNAc(2)dHex(2)\
    \ (T)', 'Hex(1)HexNAc(2)dHex(2)Sulf(1) (S)', 'Hex(1)HexNAc(2)dHex(2)Sulf(1) (T)',\
    \ 'Hex(1)HexNAc(2)NeuAc(1) (S)', 'Hex(1)HexNAc(2)NeuAc(1) (T)', 'Hex(1)HexNAc(2)NeuAc(1)Sulf(1)\
    \ (S)', 'Hex(1)HexNAc(2)NeuAc(1)Sulf(1) (T)', 'Hex(1)HexNAc(2)NeuAc(2) (S)', 'Hex(1)HexNAc(2)NeuAc(2)\
    \ (T)', 'Hex(1)HexNAc(2)NeuAc(2)Sulf(1) (S)', 'Hex(1)HexNAc(2)NeuAc(2)Sulf(1)\
    \ (T)', 'Hex(1)HexNAc(2)NeuGc(1) (S)', 'Hex(1)HexNAc(2)NeuGc(1) (T)', 'Hex(1)HexNAc(2)Pent(1)\
    \ (N)', 'Hex(1)HexNAc(2)Sulf(1) (S)', 'Hex(1)HexNAc(2)Sulf(1) (T)', 'Hex(1)HexNAc(3)\
    \ (S)', 'Hex(1)HexNAc(3) (T)', 'Hex(1)HexNAc(3)NeuAc(1) (S)', 'Hex(1)HexNAc(3)NeuAc(1)\
    \ (T)', 'Hex(1)HexNAc(3)NeuAc(2) (S)', 'Hex(1)HexNAc(3)NeuAc(2) (T)', 'Hex(1)HexNAc(3)NeuGc(1)\
    \ (S)', 'Hex(1)HexNAc(3)NeuGc(1) (T)', 'Hex(1)HexNAc(3)Sulf(1) (S)', 'Hex(1)HexNAc(3)Sulf(1)\
    \ (T)', 'Hex(1)HexNAc(4)dHex(1)Sulf(1) (S)', 'Hex(1)HexNAc(4)dHex(1)Sulf(1) (T)',\
    \ 'Hex(1)NeuAc(1) (S)', 'Hex(1)NeuAc(1) (T)', 'Hex(1)NeuAc(1)Pent(1) (S)', 'Hex(1)NeuAc(1)Pent(1)\
    \ (T)', 'Hex(1)NeuGc(1) (S)', 'Hex(1)NeuGc(1) (T)', 'Hex(1)Pent(1) (S)', 'Hex(1)Pent(1)\
    \ (T)', 'Hex(1)Pent(2) (S)', 'Hex(1)Pent(2) (T)', 'Hex(1)Pent(2)Me(1) (S)', 'Hex(1)Pent(2)Me(1)\
    \ (T)', 'Hex(1)Pent(3) (S)', 'Hex(1)Pent(3) (T)', 'Hex(1)Pent(3)Me(1) (S)', 'Hex(1)Pent(3)Me(1)\
    \ (T)', 'Hex(10)HexNAc(1) (N)', 'Hex(10)Phos(3) (S)', 'Hex(10)Phos(3) (T)', 'Hex(2)\
    \ (K)', 'Hex(2) (R)', 'Hex(2) (S)', 'Hex(2) (T)', 'Hex(2)HexA(1)HexNAc(1)Sulf(1)\
    \ (S)', 'Hex(2)HexA(1)HexNAc(1)Sulf(1) (T)', 'Hex(2)HexA(1)NeuAc(1)Pent(1)Sulf(1)\
    \ (S)', 'Hex(2)HexA(1)NeuAc(1)Pent(1)Sulf(1) (T)', 'Hex(2)HexA(1)Pent(1)Sulf(1)\
    \ (S)', 'Hex(2)HexA(1)Pent(1)Sulf(1) (T)', 'Hex(2)HexNAc(1) (N)', 'Hex(2)HexNAc(1)\
    \ (S)', 'Hex(2)HexNAc(1) (T)', 'Hex(2)HexNAc(1)Me(1) (S)', 'Hex(2)HexNAc(1)Me(1)\
    \ (T)', 'Hex(2)HexNAc(1)NeuGc(1) (S)', 'Hex(2)HexNAc(1)NeuGc(1) (T)', 'Hex(2)HexNAc(1)NeuGc(2)\
    \ (S)', 'Hex(2)HexNAc(1)NeuGc(2) (T)', 'Hex(2)HexNAc(1)NeuGc(3) (S)', 'Hex(2)HexNAc(1)NeuGc(3)\
    \ (T)', 'Hex(2)HexNAc(1)NeuGc(4) (S)', 'Hex(2)HexNAc(1)NeuGc(4) (T)', 'Hex(2)HexNAc(1)Pent(1)HexA(1)\
    \ (S)', 'Hex(2)HexNAc(1)Pent(1)HexA(1) (T)', 'Hex(2)HexNAc(1)Sulf(1) (S)', 'Hex(2)HexNAc(1)Sulf(1)\
    \ (T)', 'Hex(2)HexNAc(2) (N)', 'Hex(2)HexNAc(2) (S)', 'Hex(2)HexNAc(2) (T)', 'Hex(2)HexNAc(2)dHex(1)\
    \ (N)', 'Hex(2)HexNAc(2)dHex(1) (S)', 'Hex(2)HexNAc(2)dHex(1) (T)', 'Hex(2)HexNAc(2)NeuAc(1)\
    \ (N)', 'Hex(2)HexNAc(2)NeuAc(1) (S)', 'Hex(2)HexNAc(2)NeuAc(1) (T)', 'Hex(2)HexNAc(2)NeuAc(1)Sulf(1)\
    \ (S)', 'Hex(2)HexNAc(2)NeuAc(1)Sulf(1) (T)', 'Hex(2)HexNAc(2)NeuAc(2) (S)', 'Hex(2)HexNAc(2)NeuAc(2)\
    \ (T)', 'Hex(2)HexNAc(2)NeuAc(2)Sulf(1) (S)', 'Hex(2)HexNAc(2)NeuAc(2)Sulf(1)\
    \ (T)', 'Hex(2)HexNAc(2)NeuGc(1) (S)', 'Hex(2)HexNAc(2)NeuGc(1) (T)', 'Hex(2)HexNAc(2)Pent(1)\
    \ (N)', 'Hex(2)HexNAc(2)Sulf(1) (S)', 'Hex(2)HexNAc(2)Sulf(1) (T)', 'Hex(2)HexNAc(3)\
    \ (N)', 'Hex(2)HexNAc(3) (S)', 'Hex(2)HexNAc(3) (T)', 'Hex(2)HexNAc(3)NeuAc(1)NeuGc(1)\
    \ (S)', 'Hex(2)HexNAc(3)NeuAc(1)NeuGc(1) (T)', 'Hex(2)HexNAc(3)NeuAc(1)Sulf(1)\
    \ (S)', 'Hex(2)HexNAc(3)NeuAc(1)Sulf(1) (T)', 'Hex(2)HexNAc(3)NeuAc(2) (S)', 'Hex(2)HexNAc(3)NeuAc(2)\
    \ (T)', 'Hex(2)HexNAc(3)NeuAc(3) (S)', 'Hex(2)HexNAc(3)NeuAc(3) (T)', 'Hex(2)HexNAc(3)NeuGc(1)\
    \ (S)', 'Hex(2)HexNAc(3)NeuGc(1) (T)', 'Hex(2)HexNAc(3)NeuGc(2) (S)', 'Hex(2)HexNAc(3)NeuGc(2)\
    \ (T)', 'Hex(2)HexNAc(3)NeuGc(3) (S)', 'Hex(2)HexNAc(3)NeuGc(3) (T)', 'Hex(2)HexNAc(3)Sulf(1)\
    \ (S)', 'Hex(2)HexNAc(3)Sulf(1) (T)', 'Hex(2)HexNAc(4) (N)', 'Hex(2)HexNAc(4)\
    \ (S)', 'Hex(2)HexNAc(4) (T)', 'Hex(2)HexNAc(4)NeuAc(1) (S)', 'Hex(2)HexNAc(4)NeuAc(1)\
    \ (T)', 'Hex(2)HexNAc(5) (S)', 'Hex(2)HexNAc(5) (T)', 'Hex(2)NeuAc(1) (S)', 'Hex(2)NeuAc(1)\
    \ (T)', 'Hex(2)Pent(2) (S)', 'Hex(2)Pent(2) (T)', 'Hex(2)Pent(2)Me(1) (S)', 'Hex(2)Pent(2)Me(1)\
    \ (T)', 'Hex(2)Sulf(1) (S)', 'Hex(2)Sulf(1) (T)', 'Hex(3) (N)', 'Hex(3) (S)',\
    \ 'Hex(3) (T)', 'Hex(3)HexNAc(1) (N)', 'Hex(3)HexNAc(1) (S)', 'Hex(3)HexNAc(1)\
    \ (T)', 'Hex(3)HexNAc(1)HexA(1) (S)', 'Hex(3)HexNAc(1)HexA(1) (T)', 'Hex(3)HexNAc(1)Me(1)\
    \ (S)', 'Hex(3)HexNAc(1)Me(1) (T)', 'Hex(3)HexNAc(1)Pent(1) (N)', 'Hex(3)HexNAc(2)\
    \ (N)', 'Hex(3)HexNAc(2) (S)', 'Hex(3)HexNAc(2) (T)', 'Hex(3)HexNAc(2)NeuAc(1)\
    \ (N)', 'Hex(3)HexNAc(2)NeuAc(2) (S)', 'Hex(3)HexNAc(2)NeuAc(2) (T)', 'Hex(3)HexNAc(2)Pent(1)\
    \ (N)', 'Hex(3)HexNAc(2)Phos(1) (N)', 'Hex(3)HexNAc(3) (N)', 'Hex(3)HexNAc(3)\
    \ (S)', 'Hex(3)HexNAc(3) (T)', 'Hex(3)HexNAc(3)NeuAc(1) (S)', 'Hex(3)HexNAc(3)NeuAc(1)\
    \ (T)', 'Hex(3)HexNAc(3)NeuAc(1)Sulf(1) (S)', 'Hex(3)HexNAc(3)NeuAc(1)Sulf(1)\
    \ (T)', 'Hex(3)HexNAc(3)NeuAc(2) (S)', 'Hex(3)HexNAc(3)NeuAc(2) (T)', 'Hex(3)HexNAc(3)NeuAc(2)Sulf(1)\
    \ (S)', 'Hex(3)HexNAc(3)NeuAc(2)Sulf(1) (T)', 'Hex(3)HexNAc(3)NeuAc(3) (S)', 'Hex(3)HexNAc(3)NeuAc(3)\
    \ (T)', 'Hex(3)HexNAc(3)NeuGc(1) (S)', 'Hex(3)HexNAc(3)NeuGc(1) (T)', 'Hex(3)HexNAc(3)NeuGc(1)Sulf(1)\
    \ (S)', 'Hex(3)HexNAc(3)NeuGc(1)Sulf(1) (T)', 'Hex(3)HexNAc(3)Pent(1) (N)', 'Hex(3)HexNAc(3)Sulf(1)\
    \ (N)', 'Hex(3)HexNAc(3)Sulf(1) (S)', 'Hex(3)HexNAc(3)Sulf(1) (T)', 'Hex(3)HexNAc(4)\
    \ (N)', 'Hex(3)HexNAc(4) (S)', 'Hex(3)HexNAc(4) (T)', 'Hex(3)HexNAc(4)NeuAc(1)\
    \ (N)', 'Hex(3)HexNAc(4)NeuAc(2) (N)', 'Hex(3)HexNAc(4)Pent(1) (N)', 'Hex(3)HexNAc(4)Sulf(1)\
    \ (N)', 'Hex(3)HexNAc(5) (N)', 'Hex(3)HexNAc(5) (S)', 'Hex(3)HexNAc(5) (T)', 'Hex(3)HexNAc(5)NeuAc(1)\
    \ (N)', 'Hex(3)HexNAc(5)Sulf(1) (N)', 'Hex(3)HexNAc(6) (N)', 'Hex(3)HexNAc(6)\
    \ (S)', 'Hex(3)HexNAc(6) (T)', 'Hex(3)HexNAc(6)NeuAc(1) (N)', 'Hex(3)HexNAc(6)Sulf(1)\
    \ (N)', 'Hex(3)HexNAc(6)Sulf(2) (N)', 'Hex(3)HexNAc(7) (N)', 'Hex(3)HexNAc(7)Sulf(1)\
    \ (N)', 'Hex(4) (S)', 'Hex(4) (T)', 'Hex(4)HexA(1) (S)', 'Hex(4)HexA(1) (T)',\
    \ 'Hex(4)HexA(1)HexNAc(1) (S)', 'Hex(4)HexA(1)HexNAc(1) (T)', 'Hex(4)HexNAc(1)\
    \ (N)', 'Hex(4)HexNAc(1) (S)', 'Hex(4)HexNAc(1) (T)', 'Hex(4)HexNAc(2) (N)', 'Hex(4)HexNAc(2)NeuAc(1)\
    \ (N)', 'Hex(4)HexNAc(2)NeuAc(1) (S)', 'Hex(4)HexNAc(2)NeuAc(1) (T)', 'Hex(4)HexNAc(2)Pent(1)\
    \ (N)', 'Hex(4)HexNAc(3) (N)', 'Hex(4)HexNAc(3) (S)', 'Hex(4)HexNAc(3) (T)', 'Hex(4)HexNAc(3)NeuAc(1)\
    \ (N)', 'Hex(4)HexNAc(3)NeuAc(1) (S)', 'Hex(4)HexNAc(3)NeuAc(1) (T)', 'Hex(4)HexNAc(3)NeuAc(2)\
    \ (N)', 'Hex(4)HexNAc(3)NeuGc(1) (N)', 'Hex(4)HexNAc(3)Pent(1) (N)', 'Hex(4)HexNAc(4)\
    \ (N)', 'Hex(4)HexNAc(4) (S)', 'Hex(4)HexNAc(4) (T)', 'Hex(4)HexNAc(4)Me(2)Pent(1)\
    \ (N)', 'Hex(4)HexNAc(4)NeuAc(1) (N)', 'Hex(4)HexNAc(4)NeuAc(1) (S)', 'Hex(4)HexNAc(4)NeuAc(1)\
    \ (T)', 'Hex(4)HexNAc(4)NeuAc(1)Sulf(2) (S)', 'Hex(4)HexNAc(4)NeuAc(1)Sulf(2)\
    \ (T)', 'Hex(4)HexNAc(4)NeuAc(1)Sulf(3) (S)', 'Hex(4)HexNAc(4)NeuAc(1)Sulf(3)\
    \ (T)', 'Hex(4)HexNAc(4)NeuGc(1) (N)', 'Hex(4)HexNAc(4)NeuGc(1) (S)', 'Hex(4)HexNAc(4)NeuGc(1)\
    \ (T)', 'Hex(4)HexNAc(4)NeuGc(1)Sulf(2) (S)', 'Hex(4)HexNAc(4)NeuGc(1)Sulf(2)\
    \ (T)', 'Hex(4)HexNAc(4)Pent(1) (N)', 'Hex(4)HexNAc(4)Sulf(1) (N)', 'Hex(4)HexNAc(4)Sulf(2)\
    \ (S)', 'Hex(4)HexNAc(4)Sulf(2) (T)', 'Hex(4)HexNAc(5) (N)', 'Hex(4)HexNAc(5)NeuAc(1)\
    \ (N)', 'Hex(4)HexNAc(5)Sulf(1) (N)', 'Hex(4)HexNAc(6) (N)', 'Hex(4)Phos(1) (S)',\
    \ 'Hex(4)Phos(1) (T)', 'Hex(5) (S)', 'Hex(5) (T)', 'Hex(5)HexA(1) (S)', 'Hex(5)HexA(1)\
    \ (T)', 'Hex(5)HexNAc(1) (N)', 'Hex(5)HexNAc(1) (S)', 'Hex(5)HexNAc(1) (T)', 'Hex(5)HexNAc(2)\
    \ (N)', 'Hex(5)HexNAc(2)Phos(1) (N)', 'Hex(5)HexNAc(3) (N)', 'Hex(5)HexNAc(3)Pent(1)\
    \ (N)', 'Hex(5)HexNAc(4) (N)', 'Hex(5)HexNAc(4) (S)', 'Hex(5)HexNAc(4) (T)', 'Hex(5)HexNAc(4)Me(2)Pent(1)\
    \ (N)', 'Hex(5)HexNAc(4)NeuAc(1) (N)', 'Hex(5)HexNAc(4)NeuAc(1)Ac(1) (N)', 'Hex(5)HexNAc(4)NeuAc(1)Ac(2)\
    \ (N)', 'Hex(5)HexNAc(4)NeuAc(1)Sulf(1) (N)', 'Hex(5)HexNAc(4)NeuAc(2) (N)', 'Hex(5)HexNAc(4)NeuGc(1)\
    \ (N)', 'Hex(5)HexNAc(4)Sulf(1) (N)', 'Hex(5)HexNAc(5) (N)', 'Hex(5)HexNAc(5)\
    \ (S)', 'Hex(5)HexNAc(5) (T)', 'Hex(5)Phos(1) (S)', 'Hex(5)Phos(1) (T)', 'Hex(5)Phos(3)\
    \ (S)', 'Hex(5)Phos(3) (T)', 'Hex(6)HexNAc(1) (N)', 'Hex(6)HexNAc(2) (N)', 'Hex(6)HexNAc(2)Phos(1)\
    \ (N)', 'Hex(6)HexNAc(3) (N)', 'Hex(6)HexNAc(3)Phos(1) (N)', 'Hex(6)HexNAc(4)\
    \ (N)', 'Hex(6)HexNAc(4) (S)', 'Hex(6)HexNAc(4) (T)', 'Hex(6)HexNAc(4)Me(3) (N)',\
    \ 'Hex(6)HexNAc(4)Me(3)Pent(1) (N)', 'Hex(6)HexNAc(5) (N)', 'Hex(6)Phos(1) (S)',\
    \ 'Hex(6)Phos(1) (T)', 'Hex(6)Phos(3) (S)', 'Hex(6)Phos(3) (T)', 'Hex(7)HexNAc(1)\
    \ (N)', 'Hex(7)HexNAc(2) (N)', 'Hex(7)HexNAc(2)Phos(1) (N)', 'Hex(7)HexNAc(2)Phos(2)\
    \ (N)', 'Hex(7)HexNAc(3) (N)', 'Hex(7)HexNAc(3)Phos(1) (N)', 'Hex(7)HexNAc(4)\
    \ (N)', 'Hex(7)Phos(3) (S)', 'Hex(7)Phos(3) (T)', 'Hex(8)HexNAc(1) (N)', 'Hex(8)HexNAc(2)\
    \ (N)', 'Hex(8)Phos(3) (S)', 'Hex(8)Phos(3) (T)', 'Hex(9) (N)', 'Hex(9)HexNAc(1)\
    \ (N)', 'Hex(9)HexNAc(2) (N)', 'Hex(9)Phos(3) (S)', 'Hex(9)Phos(3) (T)', 'HexA(2)HexNAc(3)\
    \ (S)', 'HexA(2)HexNAc(3) (T)', 'HexN (K)', 'HexN (N)', 'HexN (S)', 'HexN (T)',\
    \ 'HexN (W)', 'HexNAc (C)', 'HexNAc (N)', 'HexNAc (S)', 'HexNAc (T)', 'HexNAc(1)dHex(1)\
    \ (N)', 'HexNAc(1)dHex(1) (S)', 'HexNAc(1)dHex(1) (T)', 'HexNAc(1)dHex(2) (N)',\
    \ 'HexNAc(1)Kdn(2) (S)', 'HexNAc(1)Kdn(2) (T)', 'HexNAc(1)NeuAc(1) (S)', 'HexNAc(1)NeuAc(1)\
    \ (T)', 'HexNAc(1)NeuGc(1) (S)', 'HexNAc(1)NeuGc(1) (T)', 'HexNAc(1)NeuGc(2) (S)',\
    \ 'HexNAc(1)NeuGc(2) (T)', 'HexNAc(2) (N)', 'HexNAc(2) (S)', 'HexNAc(2) (T)',\
    \ 'HexNAc(2)dHex(1) (N)', 'HexNAc(2)dHex(2) (N)', 'HexNAc(2)NeuAc(1) (S)', 'HexNAc(2)NeuAc(1)\
    \ (T)', 'HexNAc(2)NeuAc(1)Sulf(1) (S)', 'HexNAc(2)NeuAc(1)Sulf(1) (T)', 'HexNAc(2)NeuGc(1)\
    \ (S)', 'HexNAc(2)NeuGc(1) (T)', 'HexNAc(2)Sulf(1) (S)', 'HexNAc(2)Sulf(1) (T)',\
    \ 'HexNAc(3) (S)', 'HexNAc(3) (T)', 'HexNAc(3)Sulf(1) (S)', 'HexNAc(3)Sulf(1)\
    \ (T)', 'HexNAc(4) (S)', 'HexNAc(4) (T)', 'HexNAc(5) (S)', 'HexNAc(5) (T)', 'His->Ala\
    \ (H)', 'His->Arg (H)', 'His->Asn (H)', 'His->Asp (H)', 'His->Cys (H)', 'His->Gln\
    \ (H)', 'His->Glu (H)', 'His->Gly (H)', 'His->Lys (H)', 'His->Met (H)', 'His->Phe\
    \ (H)', 'His->Pro (H)', 'His->Ser (H)', 'His->Thr (H)', 'His->Trp (H)', 'His->Tyr\
    \ (H)', 'His->Val (H)', 'His->Xle (H)', 'HMVK (C)', 'HN2_mustard (C)', 'HN2_mustard\
    \ (H)', 'HN2_mustard (K)', 'HN3_mustard (C)', 'HN3_mustard (H)', 'HN3_mustard\
    \ (K)', 'HNE (A)', 'HNE (C)', 'HNE (H)', 'HNE (K)', 'HNE (L)', 'HNE+Delta:H(2)\
    \ (C)', 'HNE+Delta:H(2) (H)', 'HNE+Delta:H(2) (K)', 'HNE-BAHAH (C)', 'HNE-BAHAH\
    \ (H)', 'HNE-BAHAH (K)', 'HNE-Delta:H(2)O (C)', 'HNE-Delta:H(2)O (H)', 'HNE-Delta:H(2)O\
    \ (K)', 'Homocysteic_acid (M)', 'HPG (R)', 'Hydroxamic_acid (D)', 'Hydroxamic_acid\
    \ (E)', 'Hydroxycinnamyl (C)', 'Hydroxyfarnesyl (C)', 'Hydroxyheme (E)', 'hydroxyisobutyryl\
    \ (K)', 'Hydroxymethyl (N)', 'HydroxymethylOP (K)', 'Hydroxytrimethyl (K)', 'Hypusine\
    \ (K)', 'IASD (C)', 'IBTP (C)', 'ICAT-C (C)', 'ICAT-C:13C(9) (C)', 'ICAT-D (C)',\
    \ 'ICAT-D:2H(8) (C)', 'ICAT-G (C)', 'ICAT-G:2H(8) (C)', 'ICAT-H (C)', 'ICAT-H:13C(6)\
    \ (C)', 'ICDID (C)', 'ICDID:2H(6) (C)', 'ICPL (K)', 'ICPL (N-term)', 'ICPL (Protein\
    \ N-term)', 'ICPL:13C(6) (K)', 'ICPL:13C(6) (N-term)', 'ICPL:13C(6) (Protein N-term)',\
    \ 'ICPL:13C(6)2H(4) (K)', 'ICPL:13C(6)2H(4) (N-term)', 'ICPL:13C(6)2H(4) (Protein\
    \ N-term)', 'ICPL:2H(4) (K)', 'ICPL:2H(4) (N-term)', 'ICPL:2H(4) (Protein N-term)',\
    \ 'IDEnT (C)', 'IED-Biotin (C)', 'IGBP (C)', 'IGBP:13C(2) (C)', 'IMEHex(2)NeuAc(1)\
    \ (K)', 'IMID (K)', 'IMID:2H(4) (K)', 'Iminobiotin (K)', 'Iminobiotin (N-term)',\
    \ 'Iodo (H)', 'Iodo (Y)', 'Iodoacetanilide (C)', 'Iodoacetanilide (K)', 'Iodoacetanilide\
    \ (N-term)', 'Iodoacetanilide:13C(6) (C)', 'Iodoacetanilide:13C(6) (K)', 'Iodoacetanilide:13C(6)\
    \ (N-term)', 'iodoTMT (C)', 'iodoTMT (D)', 'iodoTMT (E)', 'iodoTMT (H)', 'iodoTMT\
    \ (K)', 'iodoTMT6plex (C)', 'iodoTMT6plex (D)', 'iodoTMT6plex (E)', 'iodoTMT6plex\
    \ (H)', 'iodoTMT6plex (K)', 'IodoU-AMP (F)', 'IodoU-AMP (W)', 'IodoU-AMP (Y)',\
    \ 'ISD_z+2_ion (N-term)', 'Isopropylphospho (S)', 'Isopropylphospho (T)', 'Isopropylphospho\
    \ (Y)', 'iTRAQ4plex (C)', 'iTRAQ4plex (H)', 'iTRAQ4plex (K)', 'iTRAQ4plex (N-term)',\
    \ 'iTRAQ4plex (Protein N-term)', 'iTRAQ4plex (S)', 'iTRAQ4plex (T)', 'iTRAQ4plex\
    \ (Y)', 'iTRAQ4plex114 (C)', 'iTRAQ4plex114 (K)', 'iTRAQ4plex114 (N-term)', 'iTRAQ4plex114\
    \ (Y)', 'iTRAQ4plex115 (C)', 'iTRAQ4plex115 (K)', 'iTRAQ4plex115 (N-term)', 'iTRAQ4plex115\
    \ (Y)', 'iTRAQ8plex (C)', 'iTRAQ8plex (H)', 'iTRAQ8plex (K)', 'iTRAQ8plex (N-term)',\
    \ 'iTRAQ8plex (Protein N-term)', 'iTRAQ8plex (S)', 'iTRAQ8plex (T)', 'iTRAQ8plex\
    \ (Y)', 'iTRAQ8plex:13C(6)15N(2) (C)', 'iTRAQ8plex:13C(6)15N(2) (K)', 'iTRAQ8plex:13C(6)15N(2)\
    \ (N-term)', 'iTRAQ8plex:13C(6)15N(2) (Y)', 'Label:13C(1)2H(3) (M)', 'Label:13C(1)2H(3)+Oxidation\
    \ (M)', 'Label:13C(2)15N(2) (K)', 'Label:13C(3) (A)', 'Label:13C(3)15N(1) (A)',\
    \ 'Label:13C(4) (M)', 'Label:13C(4)+Oxidation (M)', 'Label:13C(4)15N(1) (D)',\
    \ 'Label:13C(4)15N(2)+GG (K)', 'Label:13C(5) (P)', 'Label:13C(5)15N(1) (E)', 'Label:13C(5)15N(1)\
    \ (M)', 'Label:13C(5)15N(1) (P)', 'Label:13C(5)15N(1) (V)', 'Label:13C(6) (I)',\
    \ 'Label:13C(6) (K)', 'Label:13C(6) (L)', 'Label:13C(6) (R)', 'Label:13C(6)+Acetyl\
    \ (K)', 'Label:13C(6)+Dimethyl (K)', 'Label:13C(6)+GG (K)', 'Label:13C(6)15N(1)\
    \ (I)', 'Label:13C(6)15N(1) (L)', 'Label:13C(6)15N(2) (K)', 'Label:13C(6)15N(2)+Acetyl\
    \ (K)', 'Label:13C(6)15N(2)+Dimethyl (K)', 'Label:13C(6)15N(2)+GG (K)', 'Label:13C(6)15N(4)\
    \ (R)', 'Label:13C(6)15N(4)+Dimethyl (R)', 'Label:13C(6)15N(4)+Dimethyl:2H(6)13C(2)\
    \ (R)', 'Label:13C(6)15N(4)+Methyl (R)', 'Label:13C(6)15N(4)+Methyl:2H(3)13C(1)\
    \ (R)', 'Label:13C(9) (F)', 'Label:13C(9) (Y)', 'Label:13C(9)+Phospho (Y)', 'Label:13C(9)15N(1)\
    \ (F)', 'Label:15N(1) (A)', 'Label:15N(1) (C)', 'Label:15N(1) (D)', 'Label:15N(1)\
    \ (E)', 'Label:15N(1) (F)', 'Label:15N(1) (G)', 'Label:15N(1) (I)', 'Label:15N(1)\
    \ (L)', 'Label:15N(1) (M)', 'Label:15N(1) (P)', 'Label:15N(1) (S)', 'Label:15N(1)\
    \ (T)', 'Label:15N(1) (V)', 'Label:15N(1) (Y)', 'Label:15N(2) (K)', 'Label:15N(2)\
    \ (N)', 'Label:15N(2) (Q)', 'Label:15N(2) (W)', 'Label:15N(2)2H(9) (K)', 'Label:15N(3)\
    \ (H)', 'Label:15N(4) (R)', 'Label:18O(1) (C-term)', 'Label:18O(1) (S)', 'Label:18O(1)\
    \ (T)', 'Label:18O(1) (Y)', 'Label:18O(2) (C-term)', 'Label:2H(10) (L)', 'Label:2H(3)\
    \ (L)', 'Label:2H(3) (M)', 'Label:2H(3)+Oxidation (M)', 'Label:2H(4) (A)', 'Label:2H(4)\
    \ (F)', 'Label:2H(4) (K)', 'Label:2H(4) (U)', 'Label:2H(4) (Y)', 'Label:2H(4)+Acetyl\
    \ (K)', 'Label:2H(4)+GG (K)', 'Label:2H(4)13C(1) (R)', 'Label:2H(6)15N(1) (P)',\
    \ 'Label:2H(7)15N(4) (R)', 'Label:2H(9)13C(6)15N(2) (K)', 'lapachenole (C)', 'Leu->MetOx\
    \ (L)', 'LG-anhydrolactam (K)', 'LG-anhydrolactam (N-term)', 'LG-anhyropyrrole\
    \ (K)', 'LG-anhyropyrrole (N-term)', 'LG-Hlactam-K (K)', 'LG-Hlactam-K (Protein\
    \ N-term)', 'LG-Hlactam-R (R)', 'LG-lactam-K (K)', 'LG-lactam-K (Protein N-term)',\
    \ 'LG-lactam-R (R)', 'LG-pyrrole (K)', 'LG-pyrrole (N-term)', 'Lipoyl (K)', 'LRGG\
    \ (K)', 'LRGG+dimethyl (K)', 'LRGG+methyl (K)', 'Lys (N-term)', 'Lys->Ala (K)',\
    \ 'Lys->Allysine (K)', 'Lys->AminoadipicAcid (K)', 'Lys->Arg (K)', 'Lys->Asn (K)',\
    \ 'Lys->Asp (K)', 'Lys->CamCys (K)', 'Lys->Cys (K)', 'Lys->Gln (K)', 'Lys->Glu\
    \ (K)', 'Lys->Gly (K)', 'Lys->His (K)', 'Lys->Met (K)', 'Lys->MetOx (K)', 'Lys->Phe\
    \ (K)', 'Lys->Pro (K)', 'Lys->Ser (K)', 'Lys->Thr (K)', 'Lys->Trp (K)', 'Lys->Tyr\
    \ (K)', 'Lys->Val (K)', 'Lys->Xle (K)', 'Lys-loss (Protein C-term K)', 'Lysbiotinhydrazide\
    \ (K)', 'maleimide (C)', 'maleimide (K)', 'Maleimide-PEO2-Biotin (C)', 'maleimide3\
    \ (C)', 'maleimide3 (K)', 'maleimide5 (C)', 'maleimide5 (K)', 'Malonyl (C)', 'Malonyl\
    \ (K)', 'Malonyl (S)', 'MDCC (C)', 'MeMePhosphorothioate (S)', 'Menadione (C)',\
    \ 'Menadione (K)', 'Menadione-HQ (C)', 'Menadione-HQ (K)', 'MercaptoEthanol (S)',\
    \ 'MercaptoEthanol (T)', 'MesitylOxide (H)', 'MesitylOxide (K)', 'MesitylOxide\
    \ (Protein N-term)', 'Met->Aha (M)', 'Met->Ala (M)', 'Met->Arg (M)', 'Met->Asn\
    \ (M)', 'Met->Asp (M)', 'Met->AspSA (M)', 'Met->Cys (M)', 'Met->Gln (M)', 'Met->Glu\
    \ (M)', 'Met->Gly (M)', 'Met->His (M)', 'Met->Hpg (M)', 'Met->Hse (C-term M)',\
    \ 'Met->Hsl (C-term M)', 'Met->Lys (M)', 'Met->Phe (M)', 'Met->Pro (M)', 'Met->Ser\
    \ (M)', 'Met->Thr (M)', 'Met->Trp (M)', 'Met->Tyr (M)', 'Met->Val (M)', 'Met->Xle\
    \ (M)', 'Met-loss (Protein N-term M)', 'Met-loss+Acetyl (Protein N-term M)', 'Methamidophos-O\
    \ (C)', 'Methamidophos-O (H)', 'Methamidophos-O (K)', 'Methamidophos-O (S)', 'Methamidophos-O\
    \ (T)', 'Methamidophos-O (Y)', 'Methamidophos-S (C)', 'Methamidophos-S (H)', 'Methamidophos-S\
    \ (K)', 'Methamidophos-S (S)', 'Methamidophos-S (T)', 'Methamidophos-S (Y)', 'Methyl\
    \ (C)', 'Methyl (C-term)', 'Methyl (D)', 'Methyl (E)', 'Methyl (H)', 'Methyl (I)',\
    \ 'Methyl (K)', 'Methyl (L)', 'Methyl (N)', 'Methyl (N-term)', 'Methyl (Protein\
    \ N-term)', 'Methyl (Q)', 'Methyl (R)', 'Methyl (S)', 'Methyl (T)', 'Methyl+Acetyl:2H(3)\
    \ (K)', 'Methyl+Deamidated (N)', 'Methyl+Deamidated (Q)', 'Methyl-PEO12-Maleimide\
    \ (C)', 'Methyl:2H(2) (K)', 'Methyl:2H(2) (N-term)', 'Methyl:2H(2)13C (C)', 'Methyl:2H(2)13C\
    \ (C-term)', 'Methyl:2H(2)13C (D)', 'Methyl:2H(2)13C (E)', 'Methyl:2H(2)13C (H)',\
    \ 'Methyl:2H(2)13C (I)', 'Methyl:2H(2)13C (K)', 'Methyl:2H(2)13C (L)', 'Methyl:2H(2)13C\
    \ (N)', 'Methyl:2H(2)13C (N-term)', 'Methyl:2H(2)13C (Protein N-term)', 'Methyl:2H(2)13C\
    \ (Q)', 'Methyl:2H(2)13C (R)', 'Methyl:2H(2)13C (S)', 'Methyl:2H(2)13C (T)', 'Methyl:2H(3)\
    \ (D)', 'Methyl:2H(3) (E)', 'Methyl:2H(3) (K)', 'Methyl:2H(3) (R)', 'Methyl:2H(3)\
    \ (X)', 'Methyl:2H(3)+Acetyl:2H(3) (K)', 'Methyl:2H(3)13C(1) (K)', 'Methyl:2H(3)13C(1)\
    \ (N-term)', 'Methyl:2H(3)13C(1) (R)', 'Methylamine (S)', 'Methylamine (T)', 'Methylmalonylation\
    \ (S)', 'methylol (K)', 'methylol (W)', 'methylol (Y)', 'Methylphosphonate (S)',\
    \ 'Methylphosphonate (T)', 'Methylphosphonate (Y)', 'Methylpyrroline (K)', 'methylsulfonylethyl\
    \ (C)', 'methylsulfonylethyl (H)', 'methylsulfonylethyl (K)', 'Methylthio (C)',\
    \ 'Methylthio (D)', 'Methylthio (K)', 'Methylthio (N)', 'Methylthio (N-term)',\
    \ 'MG-H1 (R)', 'Microcin (Protein C-term)', 'MicrocinC7 (Protein C-term)', 'MM-diphenylpentanone\
    \ (C)', 'Molybdopterin (C)', 'MolybdopterinGD (C)', 'MolybdopterinGD (D)', 'MolybdopterinGD\
    \ (U)', 'MolybdopterinGD+Delta:S(-1)Se(1) (C)', 'monomethylphosphothione (C)',\
    \ 'monomethylphosphothione (H)', 'monomethylphosphothione (K)', 'monomethylphosphothione\
    \ (S)', 'monomethylphosphothione (T)', 'monomethylphosphothione (Y)', 'mTRAQ (H)',\
    \ 'mTRAQ (K)', 'mTRAQ (N-term)', 'mTRAQ (S)', 'mTRAQ (T)', 'mTRAQ (Y)', 'mTRAQ:13C(3)15N(1)\
    \ (H)', 'mTRAQ:13C(3)15N(1) (K)', 'mTRAQ:13C(3)15N(1) (N-term)', 'mTRAQ:13C(3)15N(1)\
    \ (S)', 'mTRAQ:13C(3)15N(1) (T)', 'mTRAQ:13C(3)15N(1) (Y)', 'mTRAQ:13C(6)15N(2)\
    \ (H)', 'mTRAQ:13C(6)15N(2) (K)', 'mTRAQ:13C(6)15N(2) (N-term)', 'mTRAQ:13C(6)15N(2)\
    \ (S)', 'mTRAQ:13C(6)15N(2) (T)', 'mTRAQ:13C(6)15N(2) (Y)', 'MTSL (C)', 'MurNAc\
    \ (A)', 'Myristoleyl (Protein N-term G)', 'Myristoyl (C)', 'Myristoyl (K)', 'Myristoyl\
    \ (N-term G)', 'Myristoyl+Delta:H(-4) (Protein N-term G)', 'N-dimethylphosphate\
    \ (S)', 'NA-LNO2 (C)', 'NA-LNO2 (H)', 'NA-OA-NO2 (C)', 'NA-OA-NO2 (H)', 'NBS (W)',\
    \ 'NBS:13C(6) (W)', 'NDA (K)', 'NDA (N-term)', 'NEIAA (C)', 'NEIAA (Y)', 'NEIAA:2H(5)\
    \ (C)', 'NEIAA:2H(5) (Y)', 'NEM:2H(5) (C)', 'NEM:2H(5)+H2O (C)', 'NEMsulfur (C)',\
    \ 'NEMsulfurWater (C)', 'Nethylmaleimide (C)', 'Nethylmaleimide+water (C)', 'Nethylmaleimide+water\
    \ (K)', 'NeuAc (N)', 'NeuAc (S)', 'NeuAc (T)', 'NeuGc (N)', 'NeuGc (S)', 'NeuGc\
    \ (T)', 'NHS-fluorescein (K)', 'NHS-LC-Biotin (K)', 'NHS-LC-Biotin (N-term)',\
    \ 'NIC (K)', 'NIC (N-term)', 'NIPCAM (C)', 'Nitrene (Y)', 'Nitro (F)', 'Nitro\
    \ (W)', 'Nitro (Y)', 'Nitrosyl (C)', 'Nitrosyl (Y)', 'Nmethylmaleimide (C)', 'Nmethylmaleimide\
    \ (K)', 'Nmethylmaleimide+water (C)', 'NO_SMX_SEMD (C)', 'NO_SMX_SIMD (C)', 'NO_SMX_SMCT\
    \ (C)', 'NP40 (N-term)', 'NQIGG (K)', 'O-Dimethylphosphate (S)', 'O-Dimethylphosphate\
    \ (T)', 'O-Dimethylphosphate (Y)', 'O-Et-N-diMePhospho (S)', 'O-Isopropylmethylphosphonate\
    \ (S)', 'O-Isopropylmethylphosphonate (T)', 'O-Isopropylmethylphosphonate (Y)',\
    \ 'O-Methylphosphate (S)', 'O-Methylphosphate (T)', 'O-Methylphosphate (Y)', 'O-pinacolylmethylphosphonate\
    \ (H)', 'O-pinacolylmethylphosphonate (K)', 'O-pinacolylmethylphosphonate (S)',\
    \ 'O-pinacolylmethylphosphonate (T)', 'O-pinacolylmethylphosphonate (Y)', 'Octanoyl\
    \ (C)', 'Octanoyl (S)', 'Octanoyl (T)', 'OxArgBiotin (R)', 'OxArgBiotinRed (R)',\
    \ 'Oxidation (C)', 'Oxidation (C-term G)', 'Oxidation (D)', 'Oxidation (E)', 'Oxidation\
    \ (F)', 'Oxidation (H)', 'Oxidation (I)', 'Oxidation (K)', 'Oxidation (L)', 'Oxidation\
    \ (M)', 'Oxidation (N)', 'Oxidation (P)', 'Oxidation (Q)', 'Oxidation (R)', 'Oxidation\
    \ (S)', 'Oxidation (T)', 'Oxidation (U)', 'Oxidation (V)', 'Oxidation (W)', 'Oxidation\
    \ (Y)', 'Oxidation+NEM (C)', 'OxLysBiotin (K)', 'OxLysBiotinRed (K)', 'OxProBiotin\
    \ (P)', 'OxProBiotinRed (P)', 'Palmitoleyl (C)', 'Palmitoleyl (S)', 'Palmitoleyl\
    \ (T)', 'Palmitoyl (C)', 'Palmitoyl (K)', 'Palmitoyl (Protein N-term)', 'Palmitoyl\
    \ (S)', 'Palmitoyl (T)', 'PEITC (C)', 'PEITC (K)', 'PEITC (N-term)', 'Pent(1)HexNAc(1)\
    \ (S)', 'Pent(1)HexNAc(1) (T)', 'Pent(2) (S)', 'Pent(2) (T)', 'Pentose (S)', 'Pentose\
    \ (T)', 'Pentylamine (Q)', 'PEO-Iodoacetyl-LC-Biotin (C)', 'PET (S)', 'PET (T)',\
    \ 'Phe->Ala (F)', 'Phe->Arg (F)', 'Phe->Asn (F)', 'Phe->Asp (F)', 'Phe->CamCys\
    \ (F)', 'Phe->Cys (F)', 'Phe->Gln (F)', 'Phe->Glu (F)', 'Phe->Gly (F)', 'Phe->His\
    \ (F)', 'Phe->Lys (F)', 'Phe->Met (F)', 'Phe->Pro (F)', 'Phe->Ser (F)', 'Phe->Thr\
    \ (F)', 'Phe->Trp (F)', 'Phe->Tyr (F)', 'Phe->Val (F)', 'Phe->Xle (F)', 'Phenylisocyanate\
    \ (N-term)', 'Phenylisocyanate:2H(5) (N-term)', 'phenylsulfonylethyl (C)', 'Phospho\
    \ (C)', 'Phospho (D)', 'Phospho (E)', 'Phospho (H)', 'Phospho (K)', 'Phospho (R)',\
    \ 'Phospho (S)', 'Phospho (T)', 'Phospho (Y)', 'Phosphoadenosine (H)', 'Phosphoadenosine\
    \ (K)', 'Phosphoadenosine (T)', 'Phosphoadenosine (Y)', 'PhosphoCytidine (S)',\
    \ 'PhosphoCytidine (T)', 'PhosphoCytidine (Y)', 'Phosphogluconoylation (K)', 'Phosphogluconoylation\
    \ (N-term)', 'Phosphoguanosine (H)', 'Phosphoguanosine (K)', 'PhosphoHex (S)',\
    \ 'PhosphoHex (T)', 'PhosphoHex(2) (N)', 'PhosphoHex(2) (S)', 'PhosphoHex(2) (T)',\
    \ 'PhosphoHexNAc (S)', 'PhosphoHexNAc (T)', 'Phosphopantetheine (S)', 'Phosphopropargyl\
    \ (S)', 'Phosphopropargyl (T)', 'Phosphopropargyl (Y)', 'phosphoRibosyl (D)',\
    \ 'phosphoRibosyl (E)', 'phosphoRibosyl (R)', 'PhosphoribosyldephosphoCoA (S)',\
    \ 'PhosphoUridine (H)', 'PhosphoUridine (Y)', 'Phycocyanobilin (C)', 'Phycoerythrobilin\
    \ (C)', 'Phytochromobilin (C)', 'Piperidine (K)', 'Piperidine (N-term)', 'Pro->Ala\
    \ (P)', 'Pro->Arg (P)', 'Pro->Asn (P)', 'Pro->Asp (P)', 'Pro->Cys (P)', 'Pro->Gln\
    \ (P)', 'Pro->Glu (P)', 'Pro->Gly (P)', 'Pro->HAVA (P)', 'Pro->His (P)', 'Pro->Lys\
    \ (P)', 'Pro->Met (P)', 'Pro->Phe (P)', 'Pro->pyro-Glu (P)', 'Pro->Pyrrolidinone\
    \ (P)', 'Pro->Pyrrolidone (P)', 'Pro->Ser (P)', 'Pro->Thr (P)', 'Pro->Trp (P)',\
    \ 'Pro->Tyr (P)', 'Pro->Val (P)', 'Pro->Xle (P)', 'probiotinhydrazide (P)', 'Propargylamine\
    \ (C-term)', 'Propargylamine (D)', 'Propargylamine (E)', 'Propionamide (C)', 'Propionamide\
    \ (K)', 'Propionamide (N-term)', 'Propionamide:2H(3) (C)', 'Propionyl (K)', 'Propionyl\
    \ (N-term)', 'Propionyl (Protein N-term)', 'Propionyl (S)', 'Propionyl (T)', 'Propionyl:13C(3)\
    \ (K)', 'Propionyl:13C(3) (N-term)', 'Propiophenone (C)', 'Propiophenone (H)',\
    \ 'Propiophenone (K)', 'Propiophenone (R)', 'Propiophenone (S)', 'Propiophenone\
    \ (T)', 'Propiophenone (W)', 'Propyl (C-term)', 'Propyl (D)', 'Propyl (E)', 'Propyl\
    \ (K)', 'Propyl (N-term)', 'Propyl (Protein C-term)', 'Propyl:2H(6) (K)', 'Propyl:2H(6)\
    \ (N-term)', 'PropylNAGthiazoline (C)', 'PS_Hapten (C)', 'PS_Hapten (H)', 'PS_Hapten\
    \ (K)', 'pupylation (K)', 'Puromycin (C-term)', 'PyMIC (N-term)', 'PyridoxalPhosphate\
    \ (K)', 'PyridoxalPhosphateH2 (K)', 'Pyridylacetyl (K)', 'Pyridylacetyl (N-term)',\
    \ 'Pyridylethyl (C)', 'Pyro-carbamidomethyl (N-term C)', 'pyrophospho (S)', 'pyrophospho\
    \ (T)', 'PyruvicAcidIminyl (K)', 'PyruvicAcidIminyl (Protein N-term C)', 'PyruvicAcidIminyl\
    \ (Protein N-term V)', 'QAT (C)', 'QAT:2H(3) (C)', 'QEQTGG (K)', 'QQQTGG (K)',\
    \ 'QTGG (K)', 'Quinone (W)', 'Quinone (Y)', 'Retinylidene (K)', 'RNPXL (N-term\
    \ K)', 'RNPXL (N-term R)', 'RNPXlink1 (C)', 'RNPXlink2 (F)', 'RNPXlink2 (K)',\
    \ 'RNPXlink2 (L)', 'RNPXlink3 (C)', 'RNPXlink3 (F)', 'RNPXlink4 (C)', 'RNPXlink5\
    \ (F)', 'RNPXlink5 (Y)', 's-GlcNAc (S)', 's-GlcNAc (T)', 'Saligenin (H)', 'Saligenin\
    \ (K)', 'Ser->Ala (S)', 'Ser->Arg (S)', 'Ser->Asn (S)', 'Ser->Asp (S)', 'Ser->Cys\
    \ (S)', 'Ser->Gln (S)', 'Ser->Glu (S)', 'Ser->Gly (S)', 'Ser->His (S)', 'Ser->LacticAcid\
    \ (Protein N-term S)', 'Ser->Lys (S)', 'Ser->Met (S)', 'Ser->Phe (S)', 'Ser->Pro\
    \ (S)', 'Ser->Thr (S)', 'Ser->Trp (S)', 'Ser->Tyr (S)', 'Ser->Val (S)', 'Ser->Xle\
    \ (S)', 'serotonylation (Q)', 'shTMT (K)', 'shTMT (N-term)', 'shTMT (Protein N-term)',\
    \ 'SMA (K)', 'SMA (N-term)', 'spermidine (Q)', 'spermine (Q)', 'SPITC (K)', 'SPITC\
    \ (N-term)', 'SPITC:13C(6) (K)', 'SPITC:13C(6) (N-term)', 'Succinyl (K)', 'Succinyl\
    \ (N-term)', 'Succinyl (Protein N-term)', 'Succinyl:13C(4) (K)', 'Succinyl:13C(4)\
    \ (N-term)', 'Succinyl:2H(4) (K)', 'Succinyl:2H(4) (N-term)', 'SulfanilicAcid\
    \ (C-term)', 'SulfanilicAcid (D)', 'SulfanilicAcid (E)', 'SulfanilicAcid:13C(6)\
    \ (C-term)', 'SulfanilicAcid:13C(6) (D)', 'SulfanilicAcid:13C(6) (E)', 'Sulfide\
    \ (C)', 'Sulfide (D)', 'Sulfide (W)', 'Sulfo (C)', 'Sulfo (S)', 'Sulfo (T)', 'Sulfo\
    \ (Y)', 'sulfo+amino (Y)', 'Sulfo-NHS-LC-LC-Biotin (K)', 'Sulfo-NHS-LC-LC-Biotin\
    \ (N-term)', 'SulfoGMBS (C)', 'SulfurDioxide (C)', 'SUMO2135 (K)', 'SUMO3549 (K)',\
    \ 'TAMRA-FP (S)', 'TAMRA-FP (Y)', 'Thiadiazole (C)', 'Thiazolidine (C)', 'Thiazolidine\
    \ (F)', 'Thiazolidine (H)', 'Thiazolidine (K)', 'Thiazolidine (Protein N-term)',\
    \ 'Thiazolidine (R)', 'Thiazolidine (W)', 'Thiazolidine (Y)', 'thioacylPA (K)',\
    \ 'Thiophos-S-S-biotin (S)', 'Thiophos-S-S-biotin (T)', 'Thiophos-S-S-biotin (Y)',\
    \ 'Thiophospho (S)', 'Thiophospho (T)', 'Thiophospho (Y)', 'Thr->Ala (T)', 'Thr->Arg\
    \ (T)', 'Thr->Asn (T)', 'Thr->Asp (T)', 'Thr->Cys (T)', 'Thr->Gln (T)', 'Thr->Glu\
    \ (T)', 'Thr->Gly (T)', 'Thr->His (T)', 'Thr->Lys (T)', 'Thr->Met (T)', 'Thr->Phe\
    \ (T)', 'Thr->Pro (T)', 'Thr->Ser (T)', 'Thr->Trp (T)', 'Thr->Tyr (T)', 'Thr->Val\
    \ (T)', 'Thr->Xle (T)', 'Thrbiotinhydrazide (T)', 'Thyroxine (Y)', 'TMAB (K)',\
    \ 'TMAB (N-term)', 'TMAB:2H(9) (K)', 'TMAB:2H(9) (N-term)', 'TMPP-Ac (K)', 'TMPP-Ac\
    \ (N-term)', 'TMPP-Ac (Y)', 'TMPP-Ac:13C(9) (K)', 'TMPP-Ac:13C(9) (N-term)', 'TMPP-Ac:13C(9)\
    \ (Y)', 'TMT (H)', 'TMT (K)', 'TMT (N-term)', 'TMT (Protein N-term)', 'TMT (S)',\
    \ 'TMT (T)', 'TMT2plex (H)', 'TMT2plex (K)', 'TMT2plex (N-term)', 'TMT2plex (Protein\
    \ N-term)', 'TMT2plex (S)', 'TMT2plex (T)', 'TMT6plex (H)', 'TMT6plex (K)', 'TMT6plex\
    \ (N-term)', 'TMT6plex (Protein N-term)', 'TMT6plex (S)', 'TMT6plex (T)', 'TMTpro\
    \ (H)', 'TMTpro (K)', 'TMTpro (N-term)', 'TMTpro (Protein N-term)', 'TMTpro (S)',\
    \ 'TMTpro (T)', 'TMTpro_zero (H)', 'TMTpro_zero (K)', 'TMTpro_zero (N-term)',\
    \ 'TMTpro_zero (Protein N-term)', 'TMTpro_zero (S)', 'TMTpro_zero (T)', 'TNBS\
    \ (K)', 'TNBS (N-term)', 'trifluoro (L)', 'Triiodo (Y)', 'Triiodothyronine (Y)',\
    \ 'Trimethyl (K)', 'Trimethyl (Protein N-term A)', 'Trimethyl (R)', 'Trimethyl:13C(3)2H(9)\
    \ (K)', 'Trimethyl:13C(3)2H(9) (R)', 'Trimethyl:2H(9) (K)', 'Trimethyl:2H(9) (R)',\
    \ 'Trioxidation (C)', 'Trioxidation (F)', 'Trioxidation (W)', 'Trioxidation (Y)',\
    \ 'Tripalmitate (Protein N-term C)', 'Tris (N)', 'Triton (C-term)', 'Triton (N-term)',\
    \ 'Trp->Ala (W)', 'Trp->Arg (W)', 'Trp->Asn (W)', 'Trp->Asp (W)', 'Trp->Cys (W)',\
    \ 'Trp->Gln (W)', 'Trp->Glu (W)', 'Trp->Gly (W)', 'Trp->His (W)', 'Trp->Hydroxykynurenin\
    \ (W)', 'Trp->Kynurenin (W)', 'Trp->Lys (W)', 'Trp->Met (W)', 'Trp->Oxolactone\
    \ (W)', 'Trp->Phe (W)', 'Trp->Pro (W)', 'Trp->Ser (W)', 'Trp->Thr (W)', 'Trp->Tyr\
    \ (W)', 'Trp->Val (W)', 'Trp->Xle (W)', 'Tween20 (N-term)', 'Tween80 (C-term)',\
    \ 'Tyr->Ala (Y)', 'Tyr->Arg (Y)', 'Tyr->Asn (Y)', 'Tyr->Asp (Y)', 'Tyr->Cys (Y)',\
    \ 'Tyr->Dha (Y)', 'Tyr->Gln (Y)', 'Tyr->Glu (Y)', 'Tyr->Gly (Y)', 'Tyr->His (Y)',\
    \ 'Tyr->Lys (Y)', 'Tyr->Met (Y)', 'Tyr->Phe (Y)', 'Tyr->Pro (Y)', 'Tyr->Ser (Y)',\
    \ 'Tyr->Thr (Y)', 'Tyr->Trp (Y)', 'Tyr->Val (Y)', 'Tyr->Xle (Y)', 'Ub-amide (C)',\
    \ 'Ub-Br2 (C)', 'Ub-fluorescein (C)', 'Ub-VME (C)', 'UgiJoullie (D)', 'UgiJoullie\
    \ (E)', 'UgiJoullieProGly (D)', 'UgiJoullieProGly (E)', 'UgiJoullieProGlyProGly\
    \ (D)', 'UgiJoullieProGlyProGly (E)', 'Unknown:162 (C-term)', 'Unknown:162 (D)',\
    \ 'Unknown:162 (E)', 'Unknown:162 (N-term)', 'Unknown:177 (C-term)', 'Unknown:177\
    \ (D)', 'Unknown:177 (E)', 'Unknown:177 (N-term)', 'Unknown:210 (C-term)', 'Unknown:210\
    \ (D)', 'Unknown:210 (E)', 'Unknown:210 (N-term)', 'Unknown:216 (C-term)', 'Unknown:216\
    \ (D)', 'Unknown:216 (E)', 'Unknown:216 (N-term)', 'Unknown:234 (C-term)', 'Unknown:234\
    \ (D)', 'Unknown:234 (E)', 'Unknown:234 (N-term)', 'Unknown:248 (C-term)', 'Unknown:248\
    \ (D)', 'Unknown:248 (E)', 'Unknown:248 (N-term)', 'Unknown:250 (C-term)', 'Unknown:250\
    \ (D)', 'Unknown:250 (E)', 'Unknown:250 (N-term)', 'Unknown:302 (C-term)', 'Unknown:302\
    \ (D)', 'Unknown:302 (E)', 'Unknown:302 (N-term)', 'Unknown:306 (C-term)', 'Unknown:306\
    \ (D)', 'Unknown:306 (E)', 'Unknown:306 (N-term)', 'Unknown:420 (C-term)', 'Unknown:420\
    \ (N-term)', 'Val->Ala (V)', 'Val->Arg (V)', 'Val->Asn (V)', 'Val->Asp (V)', 'Val->Cys\
    \ (V)', 'Val->Gln (V)', 'Val->Glu (V)', 'Val->Gly (V)', 'Val->His (V)', 'Val->Lys\
    \ (V)', 'Val->Met (V)', 'Val->Phe (V)', 'Val->Pro (V)', 'Val->Ser (V)', 'Val->Thr\
    \ (V)', 'Val->Trp (V)', 'Val->Tyr (V)', 'Val->Xle (V)', 'VFQQQTGG (K)', 'VIEVYQEQTGG\
    \ (K)', 'Withaferin (C)', 'Xle->Ala (I)', 'Xle->Ala (L)', 'Xle->Arg (I)', 'Xle->Arg\
    \ (L)', 'Xle->Asn (I)', 'Xle->Asn (L)', 'Xle->Asp (I)', 'Xle->Asp (L)', 'Xle->Cys\
    \ (I)', 'Xle->Cys (L)', 'Xle->Gln (I)', 'Xle->Gln (L)', 'Xle->Glu (I)', 'Xle->Glu\
    \ (L)', 'Xle->Gly (I)', 'Xle->Gly (L)', 'Xle->His (I)', 'Xle->His (L)', 'Xle->Lys\
    \ (I)', 'Xle->Lys (L)', 'Xle->Met (I)', 'Xle->Met (L)', 'Xle->Phe (I)', 'Xle->Phe\
    \ (L)', 'Xle->Pro (I)', 'Xle->Pro (L)', 'Xle->Ser (I)', 'Xle->Ser (L)', 'Xle->Thr\
    \ (I)', 'Xle->Thr (L)', 'Xle->Trp (I)', 'Xle->Trp (L)', 'Xle->Tyr (I)', 'Xle->Tyr\
    \ (L)', 'Xle->Val (I)', 'Xle->Val (L)', 'Xlink:B10621 (C)', 'Xlink:BMOE (C)',\
    \ 'Xlink:BS2G[113] (K)', 'Xlink:BS2G[113] (Protein N-term)', 'Xlink:BS2G[114]\
    \ (K)', 'Xlink:BS2G[114] (Protein N-term)', 'Xlink:BS2G[217] (K)', 'Xlink:BS2G[217]\
    \ (Protein N-term)', 'Xlink:BS2G[96] (K)', 'Xlink:BS2G[96] (Protein N-term)',\
    \ 'Xlink:BuUrBu[111] (K)', 'Xlink:BuUrBu[111] (Protein N-term)', 'Xlink:BuUrBu[196]\
    \ (K)', 'Xlink:BuUrBu[196] (Protein N-term)', 'Xlink:BuUrBu[213] (K)', 'Xlink:BuUrBu[213]\
    \ (Protein N-term)', 'Xlink:BuUrBu[214] (K)', 'Xlink:BuUrBu[214] (Protein N-term)',\
    \ 'Xlink:BuUrBu[317] (K)', 'Xlink:BuUrBu[317] (Protein N-term)', 'Xlink:BuUrBu[85]\
    \ (K)', 'Xlink:BuUrBu[85] (Protein N-term)', 'Xlink:DFDNB (K)', 'Xlink:DFDNB (N)',\
    \ 'Xlink:DFDNB (Q)', 'Xlink:DFDNB (R)', 'Xlink:DMP[122] (K)', 'Xlink:DMP[122]\
    \ (Protein N-term)', 'Xlink:DMP[139] (K)', 'Xlink:DMP[139] (Protein N-term)',\
    \ 'Xlink:DMP[140] (K)', 'Xlink:DMP[140] (Protein N-term)', 'Xlink:DMP[154] (K)',\
    \ 'Xlink:DMP[154] (Protein N-term)', 'Xlink:DSS[138] (K)', 'Xlink:DSS[138] (Protein\
    \ N-term)', 'Xlink:DSS[155] (K)', 'Xlink:DSS[155] (Protein N-term)', 'Xlink:DSS[156]\
    \ (K)', 'Xlink:DSS[156] (Protein N-term)', 'Xlink:DSS[259] (K)', 'Xlink:DSS[259]\
    \ (Protein N-term)', 'Xlink:DSSO[104] (K)', 'Xlink:DSSO[104] (Protein N-term)',\
    \ 'Xlink:DSSO[158] (K)', 'Xlink:DSSO[158] (Protein N-term)', 'Xlink:DSSO[175]\
    \ (K)', 'Xlink:DSSO[175] (Protein N-term)', 'Xlink:DSSO[176] (K)', 'Xlink:DSSO[176]\
    \ (Protein N-term)', 'Xlink:DSSO[279] (K)', 'Xlink:DSSO[279] (Protein N-term)',\
    \ 'Xlink:DSSO[54] (K)', 'Xlink:DSSO[54] (Protein N-term)', 'Xlink:DSSO[86] (K)',\
    \ 'Xlink:DSSO[86] (Protein N-term)', 'Xlink:DST[114] (K)', 'Xlink:DST[114] (Protein\
    \ N-term)', 'Xlink:DST[132] (K)', 'Xlink:DST[132] (Protein N-term)', 'Xlink:DST[56]\
    \ (K)', 'Xlink:DST[56] (Protein N-term)', 'Xlink:DTBP[172] (K)', 'Xlink:DTBP[172]\
    \ (Protein N-term)', 'Xlink:DTBP[87] (K)', 'Xlink:DTBP[87] (Protein N-term)',\
    \ 'Xlink:DTSSP[174] (K)', 'Xlink:DTSSP[174] (Protein N-term)', 'Xlink:DTSSP[192]\
    \ (K)', 'Xlink:DTSSP[192] (Protein N-term)', 'Xlink:DTSSP[88] (K)', 'Xlink:DTSSP[88]\
    \ (Protein N-term)', 'Xlink:EGS[115] (K)', 'Xlink:EGS[115] (Protein N-term)',\
    \ 'Xlink:EGS[226] (K)', 'Xlink:EGS[226] (Protein N-term)', 'Xlink:EGS[244] (K)',\
    \ 'Xlink:EGS[244] (Protein N-term)', 'Xlink:SMCC[219] (C)', 'Xlink:SMCC[219] (K)',\
    \ 'Xlink:SMCC[219] (Protein N-term)', 'Xlink:SMCC[237] (C)', 'Xlink:SMCC[237]\
    \ (K)', 'Xlink:SMCC[237] (Protein N-term)', 'Xlink:SMCC[321] (C)', 'ZGB (K)',\
    \ 'ZGB (N-term)', 'ZQG (K)')"
  type: long?
  inputBinding:
    prefix: -variable_modifications
- id: in_binary_modifications
  doc: "List of modification group indices. Indices correspond to the binary modification\
    \ index used by comet to group individually searched lists of variable modifications.\n\
    Note: if set, both variable_modifications and binary_modifications need to have\
    \ the same number of entries as the N-th entry corresponds to the N-th variable_modification.\n\
    if left empty (default), all entries are internally set to 0 generating all permutations\
    \ of modified and unmodified residues.\nFor a detailed explanation please see\
    \ the parameter description in the Comet help."
  type: long?
  inputBinding:
    prefix: -binary_modifications
- id: in_ini
  doc: Use the given TOPP INI file
  type: File?
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File?
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean?
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "*                           Output file (valid formats: 'idXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- CometAdapter
