class: CommandLineTool
id: ../../../exp_convert_entrez2gene.py.cwl
inputs:
- id: expression_file
  doc: The expression file.
  type: File
  inputBinding:
    prefix: --expression-file
- id: gene_file
  doc: The gene file (e.g., generated by the ensembl_extract_protein_coding_genes.py
    script).
  type: File
  inputBinding:
    prefix: --gene-file
- id: entrez_two_gene_file
  doc: The entrez2gene file (.e.g., generated by the ncbi_extract_entrez2gene.py script).
  type: File
  inputBinding:
    prefix: --entrez2gene-file
- id: output_file
  doc: The output file.
  type: File
  inputBinding:
    prefix: --output-file
- id: strip_affy_suffix
  doc: Strip the suffix "_at" from all Entrez IDs. (For use in affymetrix microarray
    pipeline.)
  type: boolean
  inputBinding:
    prefix: --strip-affy-suffix
- id: log_file
  doc: Path of log file (if specified, report to stdout AND file.
  type: File
  inputBinding:
    prefix: --log-file
- id: quiet
  doc: Only output errors and warnings.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: Enable verbose output. Ignored if --quiet is specified.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- exp_convert_entrez2gene.py
