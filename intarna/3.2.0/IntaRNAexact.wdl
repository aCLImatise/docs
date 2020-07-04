version 1.0

task IntaRNAexact {
  input {
    Boolean? q
    Boolean? t
    String? helix_min_bp
    String? helix_max_bp
    String? helix_max_il
    String? helix_min_pu
    String? helix_max_e
    Boolean? helix_full_e
    Boolean? no_seed
    String? seed_tq
    String? seed_bp
    Boolean? arg_m_prediction
    String? model
    String? acc
    String? int_len_max
    String? int_loop_max
    String? out
    String? out_sep
    String? out_mode
    Boolean? n
    String? out_overlap
    String? threads
    String? personality
    String? parameter_file
    Boolean? full_help
  }
  command <<<
    IntaRNAexact \
      ~{true="-q" false="" q} \
      ~{true="-t" false="" t} \
      ~{if defined(helix_min_bp) then ("--helixMinBP " +  '"' + helix_min_bp + '"') else ""} \
      ~{if defined(helix_max_bp) then ("--helixMaxBP " +  '"' + helix_max_bp + '"') else ""} \
      ~{if defined(helix_max_il) then ("--helixMaxIL " +  '"' + helix_max_il + '"') else ""} \
      ~{if defined(helix_min_pu) then ("--helixMinPu " +  '"' + helix_min_pu + '"') else ""} \
      ~{if defined(helix_max_e) then ("--helixMaxE " +  '"' + helix_max_e + '"') else ""} \
      ~{true="--helixFullE" false="" helix_full_e} \
      ~{true="--noSeed" false="" no_seed} \
      ~{if defined(seed_tq) then ("--seedTQ " +  '"' + seed_tq + '"') else ""} \
      ~{if defined(seed_bp) then ("--seedBP " +  '"' + seed_bp + '"') else ""} \
      ~{true="-m" false="" arg_m_prediction} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(acc) then ("--acc " +  '"' + acc + '"') else ""} \
      ~{if defined(int_len_max) then ("--intLenMax " +  '"' + int_len_max + '"') else ""} \
      ~{if defined(int_loop_max) then ("--intLoopMax " +  '"' + int_loop_max + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(out_sep) then ("--outSep " +  '"' + out_sep + '"') else ""} \
      ~{if defined(out_mode) then ("--outMode " +  '"' + out_mode + '"') else ""} \
      ~{true="-n" false="" n} \
      ~{if defined(out_overlap) then ("--outOverlap " +  '"' + out_overlap + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(personality) then ("--personality " +  '"' + personality + '"') else ""} \
      ~{if defined(parameter_file) then ("--parameterFile " +  '"' + parameter_file + '"') else ""} \
      ~{true="--fullhelp" false="" full_help}
  >>>
  parameter_meta {
    q: "[ --query ] arg            either an RNA sequence or the stream/file name  from where to read the query sequences (should  be the shorter sequences to increase  efficiency); use 'STDIN' to read from standard  input stream; sequences have to use IUPAC  nucleotide encoding; output alias is [seq2]"
    t: "[ --target ] arg           either an RNA sequence or the stream/file name  from where to read the target sequences (should be the longer sequences to increase  efficiency); use 'STDIN' to read from standard  input stream; sequences have to use IUPAC  nucleotide encoding; output alias is [seq1]"
    helix_min_bp: "(=2)         minimal number of base pairs inside a helix  (arg in range [2,4])"
    helix_max_bp: "(=10)        maximal number of base pairs inside a helix  (arg in range [2,20])"
    helix_max_il: "(=0)         maximal size for each internal loop size in a  helix (arg in range [0,2])."
    helix_min_pu: "(=0)         minimal unpaired probability (per sequence) of  considered helices (arg in range [0,1])."
    helix_max_e: "(=0)          maximal energy (excluding) a helix may have  (arg in range [-999,999])."
    helix_full_e: "[=arg(=1)] (=0)  if given (or true), the overall energy of a  helix (including E_init, ED, dangling ends, ..) will be used for helixMaxE checks; otherwise  only loop-terms are considered."
    no_seed: "[=arg(=1)] (=0)      if given (or true), no seed is enforced within  the predicted interactions"
    seed_tq: "comma separated list of explicit seed base pair encoding(s) in the format  startTbpsT&startQbpsQ, e.g. '3|||.|&7||.||',  where 'startT/Q' are the indices of the 5' seed ends in target/query sequence and 'bpsT/Q' the  respective dot-bar base pair encodings. This  disables all other seed constraints and seed  identification."
    seed_bp: "(=7)             number of inter-molecular base pairs within the seed region (arg in range [2,20])"
    arg_m_prediction: "[ --mode ] arg (=M)        prediction mode :  'H' = heuristic (fast and low memory),  'M' = exact (slow),  'S' = seed-only"
    model: "(=X)              interaction model :  'S' = single-site, minimum-free-energy  interaction (interior loops only),  'X' = single-site, minimum-free-energy  interaction via seed-extension (interior loops  only),  'B' = single-site, helix-block-based,  minimum-free-energy interaction (blocks of  stable helices and interior loops only),  'P' = single-site interaction with minimal  free ensemble energy per site (interior loops  only)"
    acc: "(=C)                accessibility computation : 'N' no accessibility contributions 'C' computation of accessibilities (see --accW and --accL)"
    int_len_max: "(=60)         interaction site : maximal window size to be  considered for interaction (arg in range  [0,99999]; 0 refers to the full sequence  length). If --accW is provided, the smaller  window size of both is used."
    int_loop_max: "(=10)        interaction site : maximal number of unpaired  bases between neighbored interacting bases to  be considered in interactions (arg in range  [0,30]; 0 enforces stackings only)"
    out: "(=STDOUT)           output (multi-arg) : provide a file name for  output (will be overwritten) or 'STDOUT/STDERR' to write to the according stream (according to  --outMode). Use one of the following PREFIXES  (colon-separated) to generate ADDITIONAL  output: 'qMinE:' (query) for each position the minimal energy of any interaction covering the position (CSV format) 'qSpotProb:' (query) for each position the  probability that is is covered by an  interaction covering (CSV format) 'qAcc:' (query) ED accessibility values  ('qPu'-like format). 'qPu:' (query) unpaired probabilities values  (RNAplfold format). 'tMinE:' (target) for each position the  minimal energy of any interaction covering the  position (CSV format) 'tSpotProb:' (target) for each position the  probability that is is covered by an  interaction covering (CSV format) 'tAcc:' (target) ED accessibility values  ('tPu'-like format). 'tPu:' (target) unpaired probabilities values  (RNAplfold format). 'pMinE:' (target+query) for each index pair  the minimal energy of any interaction covering  the pair (CSV format) 'spotProb:' (target+query) tracks for a given  set of interaction spots their probability to  be covered by an interaction. If no spots are  provided, probabilities for all index  combinations are computed. Spots are encoded by comma-separated 'idxT&idxQ' pairs  (target-query). For each spot a probability is  provided in concert with the probability that  none of the spots (encoded by '0&0') is covered (CSV format). The spot encoding is followed  colon-separated by the output stream/file name, eg. '--out=\"spotProb:3&76,59&2:STDERR\"'. NOTE:  value has to be quoted due to '&' symbol! For each, provide a file name or STDOUT/STDERR  to write to the respective output stream."
    out_sep: "(=;)             column separator to be used in tabular CSV  output"
    out_mode: "(=N)            output mode : 'N' normal output (ASCII char + energy), 'D' detailed output (ASCII char +  energy/position details), 'C' CSV output (see --outCsvCols), 'E' ensemble information"
    n: "[ --outNumber ] arg (=1)   number of (sub)optimal interactions to report  (arg in range [0,1000])"
    out_overlap: "(=B)         suboptimal output : interactions can overlap  'N' in none of the sequences,  'T' in the target only,  'Q' in the query only,  'B' in both sequences"
    threads: "(=1)            maximal number of threads to be used for  parallel computation of query-target  combinations. A value of 0 requests all  available CPUs. Note, the number of threads  multiplies the required memory used for  computation! (arg in range [0,8])"
    personality: "IntaRNA personality to be used, which defines  default values, available program arguments and tool behavior"
    parameter_file: "file from where to read additional command line arguments"
    full_help: "show the extended help page for all available  parameters"
  }
}