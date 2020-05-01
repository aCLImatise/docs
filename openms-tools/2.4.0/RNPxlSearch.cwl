#!/usr/bin/env cwl-runner

baseCommand:
- RNPxlSearch
class: CommandLineTool
cwlVersion: v1.0
id: rnpxlsearch
inputs:
- doc: "*                                    Input file  (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                              Input file  (valid formats: 'fasta')"
  id: database
  inputBinding:
    prefix: -database
  type: File
- doc: "*                                   Output file  (valid formats: 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Tsv output file (valid formats: 'tsv')"
  id: out_tsv
  inputBinding:
    prefix: -out_tsv
  type: File
- doc: ":mass_tolerance <tolerance>          Precursor mass tolerance (+/- around\
    \ precursor m/z) (default: '10')"
  id: precursor
  inputBinding:
    prefix: -precursor
  type: boolean
- doc: ":mass_tolerance_unit <unit>          Unit of precursor mass tolerance. (default:\
    \ 'ppm' valid: 'ppm', 'Da')"
  id: precursor
  inputBinding:
    prefix: -precursor
  type: boolean
- doc: ":min_charge <num>                    Minimum precursor charge to be considered.\
    \ (default: '2')"
  id: precursor
  inputBinding:
    prefix: -precursor
  type: boolean
- doc: ":max_charge <num>                    Maximum precursor charge to be considered.\
    \ (default: '5')"
  id: precursor
  inputBinding:
    prefix: -precursor
  type: boolean
- doc: ":isotopes <num>                      Corrects for mono-isotopic peak misassignments.\
    \ (E.g.: 1 = prec. may be misassigned to first isotopic peak) (default: '[0 1]')"
  id: precursor
  inputBinding:
    prefix: -precursor
  type: boolean
- doc: ":mass_tolerance <tolerance>           Fragment mass tolerance (+/- around\
    \ fragment m/z) (default: '10')"
  id: fragment
  inputBinding:
    prefix: -fragment
  type: boolean
- doc: ":mass_tolerance_unit <unit>           Unit of fragment m (default: 'ppm' valid:\
    \ 'ppm', 'Da')"
  id: fragment
  inputBinding:
    prefix: -fragment
  type: boolean
- doc: ":fixed <mods>                    Fixed modifications, specified using UniMod\
    \ (www.unimod.org) terms, e.g. 'Carbamidomethyl (C)' (valid: '15N-oxobutanoic\
    \ (N-term C)', '2-dimethylsuccinyl (C)',  '2-monomethylsuccinyl (C)', '2-nitrobenzyl\
    \ (Y)', '2-succinyl (C)', '2HPG (R)', '3-deoxyglucosone (R)', '3-phosphoglyceryl\
    \ (K)', '3sulfo (N-term)', '4-ONE (C)', '4-ONE (H)', '4-ONE (K)', '4-ONE+Delta:H(-2)O(-1)\
    \ (C)', '4-ONE+Delta:H(-2)O(-1) (H)', '4-ONE+Delta:H(-2)O(-1) (K)', '4AcAllylGal\
    \ (C)', 'a-type-ion (C-term)', 'AccQTag (K)', 'AccQTag (N-term)', 'Acetyl (C)',\
    \ 'Acetyl (H)', 'Acetyl (K)', 'Acetyl (N-term)', 'Acetyl (S)', 'Acetyl (T)', 'Acetyl\
    \ (Y)', 'Acetyl:13C(2) (K)', 'Acetyl:2H(3) (H)', 'Acetyl:2H(3) (K)', 'Acetyl:2H(3)\
    \ (N-term)', 'Acetyl:2H(3) (S)', 'Acetyl:2H(3) (T)', 'Acetyl:2H(3) (Y)', 'Acetyldeoxyhypusine\
    \ (K)', 'Acetylhy pusine (K)', 'ADP-Ribosyl (C)', 'ADP-Ribosyl (D)', 'ADP-Ribosyl\
    \ (E)', 'ADP-Ribosyl (K)', 'ADP-Ribosyl (N)', 'ADP-Ribosyl (R)', 'ADP-Ribosyl\
    \ (S)', 'ADP-Ribosyl (T)', 'AEBS (H)', 'AEBS (K)', 'AEBS (S)', 'AEBS (Y)', 'AEC-MAEC\
    \ (S)', 'AEC-MAEC (T)', 'AEC-MAEC:2H(4) (S)', 'AEC-MAEC:2H(4) (T)', 'AHA-Alkyne\
    \ (M)', 'AHA-Alkyne-K DDDD (M)', 'AHA-SS (M)', 'AHA-SS_CAM (M)', 'Ahx2+Hsl (C-term)',\
    \ 'Ala->Arg (A)', 'Ala->Asn (A)', 'Ala->Asp (A)', 'Ala->Cys (A)', 'Ala->Gln (A)',\
    \ 'Ala->Glu (A)', ... 'Xlink:EGScleaved (K)', 'Xlink:SMCC (C)', 'Xlink:SSD (K)',\
    \ 'ZGB (K)', 'ZGB (N-term)')"
  id: modifications
  inputBinding:
    prefix: -modifications
  type: boolean
- doc: ":variable <mods>                 Variable modifications, specified using UniMod\
    \ (www.unimod.org) terms, e.g. 'Oxidation (M)' (valid: '15N-oxobutanoic (N-term\
    \ C)', '2-dimethylsuccinyl (C)', '2-mo nomethylsuccinyl (C)', '2-nitrobenzyl (Y)',\
    \ '2-succinyl (C)', '2HPG (R)', '3-deoxyglucosone (R)', '3-phosphoglyceryl (K)',\
    \ '3sulfo (N-term)', '4-ONE (C)', '4-ONE (H)', '4-ONE (K)', '4-ONE+Delta:H(-2)O(-1)\
    \ (C)', '4-ONE+Delta:H(-2)O(-1) (H)', '4-ONE+Delta:H(-2)O(-1) (K)', '4AcAllylGal\
    \ (C)', 'a-type-ion (C-term)', 'AccQTag (K)', 'AccQTag (N-term)', 'Acetyl (C)',\
    \ 'Acetyl (H)', 'Acetyl (K)', 'Acetyl (N-term)', 'Acetyl (S)', 'Acetyl (T)', 'Acetyl\
    \ (Y)', 'Acetyl:13C(2) (K)', 'Acetyl:2H( 3) (H)', 'Acetyl:2H(3) (K)', 'Acetyl:2H(3)\
    \ (N-term)', 'Acetyl:2H(3) (S)', 'Acetyl:2H(3) (T)', 'Acetyl:2H(3) (Y)', 'Acetyldeoxyhypusine\
    \ (K)', 'Acetylhypusine (K)' , 'ADP-Ribosyl (C)', 'ADP-Ribosyl (D)', 'ADP-Ribosyl\
    \ (E)', 'ADP-Ribosyl (K)', 'ADP-Ribosyl (N)', 'ADP-Ribosyl (R)', 'ADP-Ribosyl\
    \ (S)', 'ADP-Ribosyl (T)', 'AEBS (H)', 'AEBS (K)', 'AEBS (S)', 'AEBS (Y)', 'AEC-MAEC\
    \ (S)', 'AEC-MAEC (T)', 'AEC-MAEC:2H(4) (S)', 'AEC-MAEC:2H(4) (T)', 'AHA-Alkyne\
    \ (M)', 'AHA-Alkyne-KDDDD (M)', 'AHA-SS (M)', 'AHA-SS_CAM (M)', 'Ahx2+Hsl (C-term)',\
    \ 'Ala->Arg (A)', 'Ala->Asn (A)', 'Ala->Asp (A)', 'Ala->Cys (A)', 'Ala->Gln (A)',\
    \ 'Ala->Glu (A)', 'Ala->Gly ... (K)', 'Xlink:SMCC (C)', 'Xlink:SSD (K)', 'ZGB\
    \ (K)', 'ZGB (N-term)')"
  id: modifications
  inputBinding:
    prefix: -modifications
  type: boolean
- doc: ":variable_max_per_peptide <num>  Maximum number of residues carrying a variable\
    \ modification per candidate peptide (default: '2')"
  id: modifications
  inputBinding:
    prefix: -modifications
  type: boolean
- doc: ":missed_cleavages <num>                Number of missed cleavages. (default:\
    \ '1')"
  id: peptide
  inputBinding:
    prefix: -peptide
  type: boolean
- doc: ":enzyme <cleavage site>                The enzyme used for peptide digestion.\
    \ (default: 'Trypsin' valid: 'Clostripain/P', 'elastase-trypsin-chymotrypsin',\
    \ 'PepsinA', 'Lys-N', 'Lys-C/P', 'Lys-C', 'Form ic_acid', 'Chymotrypsin/P', 'CNBr',\
    \ 'Trypsin', 'Chymotrypsin', 'Glu-C+P', 'PepsinA + P', 'cyanogen-bromide', 'Arg-C/P',\
    \ 'no cleavage', 'unspecific cleavage', 'V8-DE', 'V8-E', 'Asp-N', 'iodosobenzoate',\
    \ 'staphylococcal protease/D', 'proline-endopeptidase/HKR', 'glutamyl endopeptidase',\
    \ 'Alpha-lytic protease', '2-iodobe nzoate', 'TrypChymo', 'Trypsin/P', 'Asp-N/B',\
    \ 'leukocyte elastase', 'proline endopeptidase', 'Asp-N_ambic', 'Arg-C')"
  id: peptide
  inputBinding:
    prefix: -peptide
  type: boolean
- doc: ":length                                  Oligonucleotide maximum length. 0\
    \ = disable search for RNA variants. (default: '2')"
  id: rnp_xl
  inputBinding:
    prefix: -RNPxl
  type: boolean
- doc: :sequence                                Sequence to restrict the generation
    of oligonucleotide chains. (disabled for empty sequence)
  id: rnp_xl
  inputBinding:
    prefix: -RNPxl
  type: boolean
- doc: ":target_nucleotides                      Format:  target nucleotide=empirical\
    \ formula of nucleoside monophosphate  e.g. A=C10H14N5O7P, ..., U=C10H14N5O7P,\
    \ X=C9H13N2O8PS  where X represents e.g. tU or e.g. Y=C10H14N5O7PS where Y represents\
    \ tG (default: '[A=C10H14N5O7P C=C9H14N3O8P G=C10H14N5O8P U=C9H13N2O9P]')"
  id: rnp_xl
  inputBinding:
    prefix: -RNPxl
  type: boolean
- doc: ":mapping                                 Format: source->target e.g. A->A,\
    \ ..., U->U, U->X (default: '[A->A C->C G->G U->U]')"
  id: rnp_xl
  inputBinding:
    prefix: -RNPxl
  type: boolean
- doc: ":can_cross_link <option>                 Format: 'U' if only U forms cross-links.\
    \ 'CATG' if C, A, G, and T form cross-links. (default: 'U')"
  id: rnp_xl
  inputBinding:
    prefix: -RNPxl
  type: boolean
- doc: ":fragment_adducts                        Format: [target nucleotide]:[formula]\
    \ or [precursor adduct]->[fragment adduct formula];[name]: e.g., 'U:C9H10N2O5;U-H3PO4'\
    \ or 'U:U-H2O->C9H11N2O8P1;U-H2O', (defa ult: '[U:C9H10N2O5;U-H3PO4 U:C4H4N2O2;U'\
    \ U:C4H2N2O1;U'-H2O U:C3O;C3O U:C9H13N2O9P1;U U:C9H11N2O8P1;U-H2O U:C9H12N2O6;U-HPO3]')"
  id: rnp_xl
  inputBinding:
    prefix: -RNPxl
  type: boolean
- doc: ":modifications                           Format: empirical formula e.g -H2O,\
    \ ..., H2O+PO3 (default: '[U: U:-H2O U:-H2O-HPO3 U:-HPO3]')"
  id: rnp_xl
  inputBinding:
    prefix: -RNPxl
  type: boolean
- doc: ":scoring <method>                        Scoring algorithm used in prescoring\
    \ (fast: total-loss, slow: all losses). (default: 'fast' valid: 'fast', 'slow')"
  id: rnp_xl
  inputBinding:
    prefix: -RNPxl
  type: boolean
- doc: :decoys                                  Generate decoy sequences and spectra.
  id: rnp_xl
  inputBinding:
    prefix: -RNPxl
  type: boolean
- doc: :CysteineAdduct                          Use this flag if the +152 adduct is
    expected.
  id: rnp_xl
  inputBinding:
    prefix: -RNPxl
  type: boolean
- doc: :filter_fractional_mass                  Use this flag to filter non-crosslinks
    by fractional mass.
  id: rnp_xl
  inputBinding:
    prefix: -RNPxl
  type: boolean
- doc: :localization                            Use this flag to perform crosslink
    localization by partial loss scoring as post-analysis.
  id: rnp_xl
  inputBinding:
    prefix: -RNPxl
  type: boolean
- doc: :carbon_labeled_fragments                Generate fragment shifts assuming
    full labeling of carbon (e.g. completely labeled U13).
  id: rnp_xl
  inputBinding:
    prefix: -RNPxl
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
