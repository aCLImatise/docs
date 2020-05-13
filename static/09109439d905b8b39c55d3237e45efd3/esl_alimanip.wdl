version 1.0

task EslAlimanip {
  input {
    String oO
    String inInFormat
    String outOutFormat
    Boolean devhelpDevhelp
    String lnLnFract
    String lxLxFract
    String lmLmIn
    String lmaxLmax
    String rfRfFract
    String deDeTrunc
    String xXAmBig
    String seqSeqR
    String seqSeqK
    Boolean smallSmall
    Boolean kKReorder
    String seqSeqIns
    String seqSeqNi
    String seqSeqXi
    String trimTrim
    Boolean tTKeepRf
    String minMinPp
    String treeTree
    String reorderReorder
    String mask2rfMask2rf
    Boolean mMKeepRf
    Boolean numNumAll
    Boolean numNumRf
    String rmRmGc
    Boolean sindiSindi
    Boolean postPost2pp
    Boolean aminoAmino
    Boolean dnaDna
    Boolean rnaRna
    String? msaMsaFile
  }
  command <<<
    esl-alimanip \
      ~{msaMsaFile} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{if defined(outOutFormat) then ("--outformat " +  '"' + outOutFormat + '"') else ""} \
      ~{true="--devhelp" false="" devhelpDevhelp} \
      ~{if defined(lnLnFract) then ("--lnfract " +  '"' + lnLnFract + '"') else ""} \
      ~{if defined(lxLxFract) then ("--lxfract " +  '"' + lxLxFract + '"') else ""} \
      ~{if defined(lmLmIn) then ("--lmin " +  '"' + lmLmIn + '"') else ""} \
      ~{if defined(lmaxLmax) then ("--lmax " +  '"' + lmaxLmax + '"') else ""} \
      ~{if defined(rfRfFract) then ("--rffract " +  '"' + rfRfFract + '"') else ""} \
      ~{if defined(deDeTrunc) then ("--detrunc " +  '"' + deDeTrunc + '"') else ""} \
      ~{if defined(xXAmBig) then ("--xambig " +  '"' + xXAmBig + '"') else ""} \
      ~{if defined(seqSeqR) then ("--seq-r " +  '"' + seqSeqR + '"') else ""} \
      ~{if defined(seqSeqK) then ("--seq-k " +  '"' + seqSeqK + '"') else ""} \
      ~{true="--small" false="" smallSmall} \
      ~{true="--k-reorder" false="" kKReorder} \
      ~{if defined(seqSeqIns) then ("--seq-ins " +  '"' + seqSeqIns + '"') else ""} \
      ~{if defined(seqSeqNi) then ("--seq-ni " +  '"' + seqSeqNi + '"') else ""} \
      ~{if defined(seqSeqXi) then ("--seq-xi " +  '"' + seqSeqXi + '"') else ""} \
      ~{if defined(trimTrim) then ("--trim " +  '"' + trimTrim + '"') else ""} \
      ~{true="--t-keeprf" false="" tTKeepRf} \
      ~{if defined(minMinPp) then ("--minpp " +  '"' + minMinPp + '"') else ""} \
      ~{if defined(treeTree) then ("--tree " +  '"' + treeTree + '"') else ""} \
      ~{if defined(reorderReorder) then ("--reorder " +  '"' + reorderReorder + '"') else ""} \
      ~{if defined(mask2rfMask2rf) then ("--mask2rf " +  '"' + mask2rfMask2rf + '"') else ""} \
      ~{true="--m-keeprf" false="" mMKeepRf} \
      ~{true="--num-all" false="" numNumAll} \
      ~{true="--num-rf" false="" numNumRf} \
      ~{if defined(rmRmGc) then ("--rm-gc " +  '"' + rmRmGc + '"') else ""} \
      ~{true="--sindi" false="" sindiSindi} \
      ~{true="--post2pp" false="" postPost2pp} \
      ~{true="--amino" false="" aminoAmino} \
      ~{true="--dna" false="" dnaDna} \
      ~{true="--rna" false="" rnaRna}
  >>>
}