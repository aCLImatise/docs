version 1.0

task Shapeit42 {
  input {
    Int? seed
    Boolean? arg_number_thread
    Boolean? arg_genotypes_phased
    Boolean? arg_scaffold_haplotypes
    Boolean? arg_target_region
    String? use_ps
    Boolean? sequencing
    Int? mcmc_iterations
    Float? mcmc_prune
    Float? pb_wt_modulo
    Int? pb_wt_depth
    Int? pb_wt_mac
    Float? pb_wt_mdr
    Int? ibd_two_length
    Int? ibd_two_maf
    Int? ibd_two_mdr
    Int? ibd_two_count
    Int? ibd_two_output
    Boolean? arg_minimal_size
    Boolean? arg_phased_haplotypes
    String? bin_graph
    File? log
    String cm
  }
  command <<<
    shapeit4_2 \
      ~{cm} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (arg_number_thread) then "-T" else ""} \
      ~{if (arg_genotypes_phased) then "-I" else ""} \
      ~{if (arg_scaffold_haplotypes) then "-S" else ""} \
      ~{if (arg_target_region) then "-R" else ""} \
      ~{if defined(use_ps) then ("--use-PS " +  '"' + use_ps + '"') else ""} \
      ~{if (sequencing) then "--sequencing" else ""} \
      ~{if defined(mcmc_iterations) then ("--mcmc-iterations " +  '"' + mcmc_iterations + '"') else ""} \
      ~{if defined(mcmc_prune) then ("--mcmc-prune " +  '"' + mcmc_prune + '"') else ""} \
      ~{if defined(pb_wt_modulo) then ("--pbwt-modulo " +  '"' + pb_wt_modulo + '"') else ""} \
      ~{if defined(pb_wt_depth) then ("--pbwt-depth " +  '"' + pb_wt_depth + '"') else ""} \
      ~{if defined(pb_wt_mac) then ("--pbwt-mac " +  '"' + pb_wt_mac + '"') else ""} \
      ~{if defined(pb_wt_mdr) then ("--pbwt-mdr " +  '"' + pb_wt_mdr + '"') else ""} \
      ~{if defined(ibd_two_length) then ("--ibd2-length " +  '"' + ibd_two_length + '"') else ""} \
      ~{if defined(ibd_two_maf) then ("--ibd2-maf " +  '"' + ibd_two_maf + '"') else ""} \
      ~{if defined(ibd_two_mdr) then ("--ibd2-mdr " +  '"' + ibd_two_mdr + '"') else ""} \
      ~{if defined(ibd_two_count) then ("--ibd2-count " +  '"' + ibd_two_count + '"') else ""} \
      ~{if defined(ibd_two_output) then ("--ibd2-output " +  '"' + ibd_two_output + '"') else ""} \
      ~{if (arg_minimal_size) then "-W" else ""} \
      ~{if (arg_phased_haplotypes) then "-O" else ""} \
      ~{if defined(bin_graph) then ("--bingraph " +  '"' + bin_graph + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/shapeit4:4.2.0--h0c37f25_0"
  }
  parameter_meta {
    seed: "(=15052011)                Seed of the random number generator"
    arg_number_thread: "[ --thread ] arg (=1)              Number of thread used"
    arg_genotypes_phased: "[ --input ] arg                    Genotypes to be phased in VCF/BCF"
    arg_scaffold_haplotypes: "[ --scaffold ] arg                 Scaffold of haplotypes in VCF/BCF"
    arg_target_region: "[ --region ] arg                   Target region"
    use_ps: "Informs phasing using PS field from\\nread based phasing"
    sequencing: "Default parameter setting for\\nsequencing data (this divides by 50 the\\ndefault value of --pbwt-modulo)"
    mcmc_iterations: "(=5b,1p,1b,1p,1b,1p,5m)\\nIteration scheme of the MCMC"
    mcmc_prune: "(=0.999)             Pruning threshold for genotype graphs"
    pb_wt_modulo: "(=0.02)             Storage frequency of PBWT indexes in cM\\n(i.e. storage every 0.02 cM by default)"
    pb_wt_depth: "(=4)                 Depth of PBWT indexes to condition on"
    pb_wt_mac: "(=2)                   Minimal Minor Allele Count at which\\nPBWT is evaluated"
    pb_wt_mdr: "(=0.5)                 Maximal Missing Data Rate at which PBWT\\nis evaluated"
    ibd_two_length: "(=3)                DEPRECATED"
    ibd_two_maf: "(=0.01)                DEPRECATED"
    ibd_two_mdr: "(=0.5)                 DEPRECATED"
    ibd_two_count: "(=100)               DEPRECATED"
    ibd_two_output: "DEPRECATED"
    arg_minimal_size: "[ --window ] arg (=2.5)            Minimal size of the phasing window in"
    arg_phased_haplotypes: "[ --output ] arg                   Phased haplotypes in VCF/BCF format"
    bin_graph: "Phased haplotypes in BIN format [Useful\\nto sample multiple likely haplotype\\nconfigurations per sample]"
    log: "Log file"
    cm: "--effective-size arg (=15000)         Effective size of the population"
  }
  output {
    File out_stdout = stdout()
  }
}