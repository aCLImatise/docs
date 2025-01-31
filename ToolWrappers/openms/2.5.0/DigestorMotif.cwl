class: CommandLineTool
id: DigestorMotif.cwl
inputs:
- id: in_in
  doc: "*                 FASTA input file (valid formats: 'fasta')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*                Output file (peptides)\n(valid formats: 'idXML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_missed_cleavages
  doc: "The number of allowed missed cleavages (default: '1' min: '0')"
  type: long?
  inputBinding:
    prefix: -missed_cleavages
- id: in_mass_accuracy
  doc: "Give your mass accuracy in ppb (default: '1000')"
  type: long?
  inputBinding:
    prefix: -mass_accuracy
- id: in_min_length
  doc: "Minimum length of peptide (default: '6')"
  type: long?
  inputBinding:
    prefix: -min_length
- id: in_out_option
  doc: "Indicate 1 (peptide table only), 2 (statistics only) or (both peptide table\
    \ + statistics) (default: '1')"
  type: long?
  inputBinding:
    prefix: -out_option
- id: in_enzyme
  doc: "The enzyme used for peptide digestion. (default: 'Trypsin' valid: 'Glu-C+P',\
    \ 'PepsinA + P', 'no cleavage', 'unspecific cleavage', 'Asp-N_ambic', 'Lys-C',\
    \ 'CNBr', 'Formic_acid', 'Chymotrypsin', 'Chymotrypsin/P', 'TrypChymo', 'Trypsin/P',\
    \ 'V8-DE', 'Asp-N', 'Asp-N/B', 'cyanogen-bromide', 'Clostripain/P', 'elastase-trypsin-chymotrypsin',\
    \ 'V8-E', 'leukocyte elastase', 'proline endopeptidase', 'glutamyl endopeptidase',\
    \ 'Alpha-lytic protease', '2-iodobenzoate', 'iodosobenzoate', 'staphylococcal\
    \ protease/D', 'proline-endopeptidase/HKR', 'Trypsin', 'Lys-C/P', 'PepsinA', 'Arg-C',\
    \ 'Arg-C/P', 'Lys-N')"
  type: long?
  inputBinding:
    prefix: -enzyme
- id: in_motif
  doc: "The motif for the restricted peptidome (default: 'M')"
  type: string?
  inputBinding:
    prefix: -motif
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
  doc: "*                Output file (peptides)\n(valid formats: 'idXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- DigestorMotif
