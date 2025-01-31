version 1.0

task Bactopiatoolspy {
  input {
    Directory? bac_topia
    Boolean? force_rebuild
    Boolean? skip_cond_a
    Boolean? verbose
    Boolean? silent
    String var_5
    String var_6
    String var_7
    String var_8
    String var_9
    String var_10
    String var_11
    String var_12
    String var_13
    String var_14
    String var_15
    String var_16
    String var_17
    String var_18
    String var_19
    String var_20
    String var_21
    String var_22
  }
  command <<<
    bactopia_tools_py \
      ~{var_5} \
      ~{var_6} \
      ~{var_7} \
      ~{var_8} \
      ~{var_9} \
      ~{var_10} \
      ~{var_11} \
      ~{var_12} \
      ~{var_13} \
      ~{var_14} \
      ~{var_15} \
      ~{var_16} \
      ~{var_17} \
      ~{var_18} \
      ~{var_19} \
      ~{var_20} \
      ~{var_21} \
      ~{var_22} \
      ~{if defined(bac_topia) then ("--bactopia " +  '"' + bac_topia + '"') else ""} \
      ~{if (force_rebuild) then "--force_rebuild" else ""} \
      ~{if (skip_cond_a) then "--skip_conda" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bactopia:1.6.1--0"
  }
  parameter_meta {
    bac_topia: "Directory where Bactopia repository is stored."
    force_rebuild: "Force overwrite of existing Conda environments."
    skip_cond_a: "Skip all things conda related."
    verbose: "Print debug related text."
    silent: "Only critical errors will be printed."
    var_5: "Functional annotation using orthologous groups"
    var_6: "Pairwise average nucleotide identity"
    var_7: "Identify marker genes and assign taxonomic classifications"
    var_8: "Identify positions of insertion sites"
    var_9: "Trees based on Mash distances"
    var_10: "16s assembly, alignment and tree"
    var_11: "Pan-genome with optional core-genome tree"
    var_12: "Pan-genome with optional core-genome tree"
    var_13: "A report summarizing Bactopia project"
    var_14: "Functional annotation using orthologous groups"
    var_15: "Pairwise average nucleotide identity"
    var_16: "Identify marker genes and assign taxonomic classifications"
    var_17: "Identify positions of insertion sites"
    var_18: "Trees based on Mash distances"
    var_19: "16s assembly, alignment and tree"
    var_20: "Pan-genome with optional core-genome tree"
    var_21: "Pan-genome with optional core-genome tree"
    var_22: "A report summarizing Bactopia project"
  }
  output {
    File out_stdout = stdout()
  }
}