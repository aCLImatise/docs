version 1.0

task FindDifferentialPrimers.py {
  input {
    File? in_file
    String? outdir
    String? num_return
    Boolean? hybrid_probe
    Boolean? filter_gc_three_prime
    String? single_product
    String? prodigal
    String? e_primer_three
    String? blast_exe
    String? blast_db
    Boolean? use_blast
    Boolean? no_cds
    Boolean? no_prodigal
    Boolean? no_primer_three
    Boolean? no_primer_search
    Boolean? no_classify
    String? o_size
    Int? minsize
    Int? maxsize
    String? otm
    Int? mint_m
    Int? max_tm
    String? ogc_percent
    Int? ming_c
    Int? max_gc
    String? p_size_opt
    String? p_size_min
    String? p_size_max
    Int? max_poly_x
    String? mismatch_percent
    String? oligo_o_size
    String? oligo_minsize
    String? oligo_maxsize
    String? oligo_otm
    String? oligo_mint_m
    String? oligo_max_tm
    String? oligo_ogc_percent
    String? oligo_ming_c
    String? oligo_max_gc
    String? oligo_max_poly_x
    String? cpus
    Boolean? sge
    Boolean? clean
    Boolean? clean_only
    String? log_file
    Boolean? verbose
    Boolean? debug
    Boolean? keep_logs
    String? log_dir
    String arg
  }
  command <<<
    find_differential_primers.py \
      ~{arg} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(num_return) then ("--numreturn " +  '"' + num_return + '"') else ""} \
      ~{true="--hybridprobe" false="" hybrid_probe} \
      ~{true="--filtergc3prime" false="" filter_gc_three_prime} \
      ~{if defined(single_product) then ("--single_product " +  '"' + single_product + '"') else ""} \
      ~{if defined(prodigal) then ("--prodigal " +  '"' + prodigal + '"') else ""} \
      ~{if defined(e_primer_three) then ("--eprimer3 " +  '"' + e_primer_three + '"') else ""} \
      ~{if defined(blast_exe) then ("--blast_exe " +  '"' + blast_exe + '"') else ""} \
      ~{if defined(blast_db) then ("--blastdb " +  '"' + blast_db + '"') else ""} \
      ~{true="--useblast" false="" use_blast} \
      ~{true="--nocds" false="" no_cds} \
      ~{true="--noprodigal" false="" no_prodigal} \
      ~{true="--noprimer3" false="" no_primer_three} \
      ~{true="--noprimersearch" false="" no_primer_search} \
      ~{true="--noclassify" false="" no_classify} \
      ~{if defined(o_size) then ("--osize " +  '"' + o_size + '"') else ""} \
      ~{if defined(minsize) then ("--minsize " +  '"' + minsize + '"') else ""} \
      ~{if defined(maxsize) then ("--maxsize " +  '"' + maxsize + '"') else ""} \
      ~{if defined(otm) then ("--otm " +  '"' + otm + '"') else ""} \
      ~{if defined(mint_m) then ("--mintm " +  '"' + mint_m + '"') else ""} \
      ~{if defined(max_tm) then ("--maxtm " +  '"' + max_tm + '"') else ""} \
      ~{if defined(ogc_percent) then ("--ogcpercent " +  '"' + ogc_percent + '"') else ""} \
      ~{if defined(ming_c) then ("--mingc " +  '"' + ming_c + '"') else ""} \
      ~{if defined(max_gc) then ("--maxgc " +  '"' + max_gc + '"') else ""} \
      ~{if defined(p_size_opt) then ("--psizeopt " +  '"' + p_size_opt + '"') else ""} \
      ~{if defined(p_size_min) then ("--psizemin " +  '"' + p_size_min + '"') else ""} \
      ~{if defined(p_size_max) then ("--psizemax " +  '"' + p_size_max + '"') else ""} \
      ~{if defined(max_poly_x) then ("--maxpolyx " +  '"' + max_poly_x + '"') else ""} \
      ~{if defined(mismatch_percent) then ("--mismatchpercent " +  '"' + mismatch_percent + '"') else ""} \
      ~{if defined(oligo_o_size) then ("--oligoosize " +  '"' + oligo_o_size + '"') else ""} \
      ~{if defined(oligo_minsize) then ("--oligominsize " +  '"' + oligo_minsize + '"') else ""} \
      ~{if defined(oligo_maxsize) then ("--oligomaxsize " +  '"' + oligo_maxsize + '"') else ""} \
      ~{if defined(oligo_otm) then ("--oligootm " +  '"' + oligo_otm + '"') else ""} \
      ~{if defined(oligo_mint_m) then ("--oligomintm " +  '"' + oligo_mint_m + '"') else ""} \
      ~{if defined(oligo_max_tm) then ("--oligomaxtm " +  '"' + oligo_max_tm + '"') else ""} \
      ~{if defined(oligo_ogc_percent) then ("--oligoogcpercent " +  '"' + oligo_ogc_percent + '"') else ""} \
      ~{if defined(oligo_ming_c) then ("--oligomingc " +  '"' + oligo_ming_c + '"') else ""} \
      ~{if defined(oligo_max_gc) then ("--oligomaxgc " +  '"' + oligo_max_gc + '"') else ""} \
      ~{if defined(oligo_max_poly_x) then ("--oligomaxpolyx " +  '"' + oligo_max_poly_x + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{true="--sge" false="" sge} \
      ~{true="--clean" false="" clean} \
      ~{true="--cleanonly" false="" clean_only} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug} \
      ~{true="--keep_logs" false="" keep_logs} \
      ~{if defined(log_dir) then ("--log_dir " +  '"' + log_dir + '"') else ""}
  >>>
  parameter_meta {
    in_file: "location of configuration file"
    outdir: "directory for output files"
    num_return: "number of primers to find"
    hybrid_probe: "generate internal oligo as a hybridisation probe"
    filter_gc_three_prime: "allow no more than two GC at the 3` end of primers"
    single_product: "location of FASTA sequence file containing sequences from which a sequence-specific primer must amplify exactly one product."
    prodigal: "location of Prodigal executable"
    e_primer_three: "location of EMBOSS eprimer3 executable"
    blast_exe: "location of BLASTN/BLASTALL executable"
    blast_db: "location of BLAST database"
    use_blast: "use existing BLAST results"
    no_cds: "do not restrict primer prediction to CDS"
    no_prodigal: "do not carry out Prodigal prediction step"
    no_primer_three: "do not carry out ePrimer3 prediction step"
    no_primer_search: "do not carry out PrimerSearch step"
    no_classify: "do not carry out primer classification step"
    o_size: "optimal size for primer oligo"
    minsize: "minimum size for primer oligo"
    maxsize: "maximum size for primer oligo"
    otm: "optimal melting temperature for primer oligo"
    mint_m: "minimum melting temperature for primer oligo"
    max_tm: "maximum melting temperature for primer oligo"
    ogc_percent: "optimal %GC for primer oligo"
    ming_c: "minimum %GC for primer oligo"
    max_gc: "maximum %GC for primer oligo"
    p_size_opt: "optimal size for amplified region"
    p_size_min: "minimum size for amplified region"
    p_size_max: "maximum size for amplified region"
    max_poly_x: "maximum run of repeated nucleotides in primer"
    mismatch_percent: "allowed percentage mismatch in primersearch"
    oligo_o_size: "optimal size for internal oligo"
    oligo_minsize: "minimum size for internal oligo"
    oligo_maxsize: "maximum size for internal oligo"
    oligo_otm: "optimal melting temperature for internal oligo"
    oligo_mint_m: "minimum melting temperature for internal oligo"
    oligo_max_tm: "maximum melting temperature for internal oligo"
    oligo_ogc_percent: "optimal %GC for internal oligo"
    oligo_ming_c: "minimum %GC for internal oligo"
    oligo_max_gc: "maximum %GC for internal oligo"
    oligo_max_poly_x: "maximum run of repeated nt in internal oligo"
    cpus: "number of CPUs to use in multiprocessing"
    sge: "use SGE job scheduler"
    clean: "clean up old output files before running"
    clean_only: "clean up old output files and exit"
    log_file: "script logfile location"
    verbose: "report progress to log"
    debug: "report extra progress to log for debugging"
    keep_logs: "store log files from each process"
    log_dir: "store called process log files in this directory"
    arg: ""
  }
}