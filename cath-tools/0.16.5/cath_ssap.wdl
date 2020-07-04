version 1.0

task CathSsap {
  input {
    Boolean? output_version_information
    Boolean? debug
    Boolean? output_scores_file
    File? clique_file
    File? domin_file
    String? max_score_to_fast_rerun
    String? max_score_to_slow_rerun
    Boolean? slow_ssap_only
    Boolean? local_ssap_score
    Boolean? all_scores
    String? prot_src_files
    String? sup_dir
    String? align_dir
    String? min_score_for_files
    String? min_sup_score
    Boolean? rasmol_script
    Boolean? xml_sup
    File? pdb_path
    File? dssp_path
    File? wolf_path
    File? sec_path
    String? pdb_prefix
    String? dssp_prefix
    String? wolf_prefix
    String? sec_prefix
    String? pdb_suffix
    String? dssp_suffix
    String? wolf_suffix
    String? sec_suffix
    String? align_regions
    Boolean? alignment_help
    Boolean? citation_help
    Boolean? scores_help
    String protein_one
    String protein_two
  }
  command <<<
    cath-ssap \
      ~{protein_one} \
      ~{protein_two} \
      ~{true="-v" false="" output_version_information} \
      ~{true="--debug" false="" debug} \
      ~{true="-o" false="" output_scores_file} \
      ~{if defined(clique_file) then ("--clique-file " +  '"' + clique_file + '"') else ""} \
      ~{if defined(domin_file) then ("--domin-file " +  '"' + domin_file + '"') else ""} \
      ~{if defined(max_score_to_fast_rerun) then ("--max-score-to-fast-rerun " +  '"' + max_score_to_fast_rerun + '"') else ""} \
      ~{if defined(max_score_to_slow_rerun) then ("--max-score-to-slow-rerun " +  '"' + max_score_to_slow_rerun + '"') else ""} \
      ~{true="--slow-ssap-only" false="" slow_ssap_only} \
      ~{true="--local-ssap-score" false="" local_ssap_score} \
      ~{true="--all-scores" false="" all_scores} \
      ~{if defined(prot_src_files) then ("--prot-src-files " +  '"' + prot_src_files + '"') else ""} \
      ~{if defined(sup_dir) then ("--supdir " +  '"' + sup_dir + '"') else ""} \
      ~{if defined(align_dir) then ("--aligndir " +  '"' + align_dir + '"') else ""} \
      ~{if defined(min_score_for_files) then ("--min-score-for-files " +  '"' + min_score_for_files + '"') else ""} \
      ~{if defined(min_sup_score) then ("--min-sup-score " +  '"' + min_sup_score + '"') else ""} \
      ~{true="--rasmol-script" false="" rasmol_script} \
      ~{true="--xmlsup" false="" xml_sup} \
      ~{if defined(pdb_path) then ("--pdb-path " +  '"' + pdb_path + '"') else ""} \
      ~{if defined(dssp_path) then ("--dssp-path " +  '"' + dssp_path + '"') else ""} \
      ~{if defined(wolf_path) then ("--wolf-path " +  '"' + wolf_path + '"') else ""} \
      ~{if defined(sec_path) then ("--sec-path " +  '"' + sec_path + '"') else ""} \
      ~{if defined(pdb_prefix) then ("--pdb-prefix " +  '"' + pdb_prefix + '"') else ""} \
      ~{if defined(dssp_prefix) then ("--dssp-prefix " +  '"' + dssp_prefix + '"') else ""} \
      ~{if defined(wolf_prefix) then ("--wolf-prefix " +  '"' + wolf_prefix + '"') else ""} \
      ~{if defined(sec_prefix) then ("--sec-prefix " +  '"' + sec_prefix + '"') else ""} \
      ~{if defined(pdb_suffix) then ("--pdb-suffix " +  '"' + pdb_suffix + '"') else ""} \
      ~{if defined(dssp_suffix) then ("--dssp-suffix " +  '"' + dssp_suffix + '"') else ""} \
      ~{if defined(wolf_suffix) then ("--wolf-suffix " +  '"' + wolf_suffix + '"') else ""} \
      ~{if defined(sec_suffix) then ("--sec-suffix " +  '"' + sec_suffix + '"') else ""} \
      ~{if defined(align_regions) then ("--align-regions " +  '"' + align_regions + '"') else ""} \
      ~{true="--alignment-help" false="" alignment_help} \
      ~{true="--citation-help" false="" citation_help} \
      ~{true="--scores-help" false="" scores_help}
  >>>
  parameter_meta {
    output_version_information: "[ --version ]                         Output version information"
    debug: "Output debugging information"
    output_scores_file: "[ --outfile ] <file>                  [DEPRECATED] Output scores to <file> rather than to stdout"
    clique_file: "Read clique from <file>"
    domin_file: "Read domin from <file>"
    max_score_to_fast_rerun: "(=65)  Run a second fast SSAP with looser cutoffs if the first fast SSAP's score falls below <score>"
    max_score_to_slow_rerun: "(=75)  Perform a slow SSAP if the (best) fast SSAP score falls below <score>"
    slow_ssap_only: "Don't try any fast SSAPs; only use slow SSAP"
    local_ssap_score: "[DEPRECATED] Normalise the SSAP score over the length of the smallest domain rather than the largest"
    all_scores: "[DEPRECATED] Output all SSAP scores from fast and slow runs, not just the highest"
    prot_src_files: "(=PDB)            Read the protein data from the set of files <set>, of available sets: PDB, PDB_DSSP, PDB_DSSP_SEC, WOLF_SEC"
    sup_dir: "[DEPRECATED] Output a superposition to directory <dir>"
    align_dir: "(=\".\")                  Write alignment to directory <dir>"
    min_score_for_files: "(=0)       Only output alignment/superposition files if the SSAP score exceeds <score>"
    min_sup_score: "(=-0.25)         [DEPRECATED] Calculate superposition based on the residue-pairs with scores greater than <score>"
    rasmol_script: "[DEPRECATED] Write a rasmol superposition script to load and colour the superposed structures"
    xml_sup: "[DEPRECATED] Write a small xml superposition file, from which a larger superposition file can be reconstructed"
    pdb_path: "(=.)                   Search for PDB files using the path <path>"
    dssp_path: "(=.)                  Search for DSSP files using the path <path>"
    wolf_path: "(=.)                  Search for wolf files using the path <path>"
    sec_path: "(=.)                   Search for sec files using the path <path>"
    pdb_prefix: "Prepend the prefix <pre> to a protein's name to form its PDB filename"
    dssp_prefix: "Prepend the prefix <pre> to a protein's name to form its DSSP filename"
    wolf_prefix: "Prepend the prefix <pre> to a protein's name to form its wolf filename"
    sec_prefix: "Prepend the prefix <pre> to a protein's name to form its sec filename"
    pdb_suffix: "Append the suffix <suf> to a protein's name to form its PDB filename"
    dssp_suffix: "(=.dssp)             Append the suffix <suf> to a protein's name to form its DSSP filename"
    wolf_suffix: "(=.wolf)             Append the suffix <suf> to a protein's name to form its wolf filename"
    sec_suffix: "(=.sec)               Append the suffix <suf> to a protein's name to form its sec filename"
    align_regions: "Handle region(s) <regions> as the alignment part of the structure. May be specified multiple times, in correspondence with the structures. Format is: D[5inwB02]251-348:B,408-416A:B (Put <regions> in quotes to prevent the square brackets confusing your shell (\"No match\"))"
    alignment_help: "Help on alignment format"
    citation_help: "Help on SSAP authorship & how to cite it"
    scores_help: "Help on scores format"
    protein_one: ""
    protein_two: ""
  }
}