version 1.0

task OpenPepXLLF {
  input {
    File inIn
    File databaseDatabase
    String decoyDecoyString
    Boolean decoyDecoyPrefix
    Boolean precursorPrecursor
    Boolean precursorPrecursor
    Boolean precursorPrecursor
    Boolean fragmentFragment
    Boolean fragmentFragment
    Boolean fragmentFragment
    Boolean modificationsModifications
    Boolean modificationsModifications
    Boolean modificationsModifications
    Boolean peptidePeptide
    Boolean peptidePeptide
    Boolean peptidePeptide
    Boolean crossCrossLinker
    Boolean crossCrossLinker
    Boolean crossCrossLinker
    Boolean crossCrossLinker
    Boolean crossCrossLinker
    Boolean algorithmAlgorithm
    Boolean algorithmAlgorithm
    Boolean algorithmAlgorithm
    File outOutXQuestXml
    File outOutXQuestSpecXml
    File outOutIdxml
    File outOutMzIdentMl
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    OpenPepXLLF \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(databaseDatabase) then ("-database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(decoyDecoyString) then ("-decoy_string " +  '"' + decoyDecoyString + '"') else ""} \
      ~{true="-decoy_prefix" false="" decoyDecoyPrefix} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-fragment" false="" fragmentFragment} \
      ~{true="-fragment" false="" fragmentFragment} \
      ~{true="-fragment" false="" fragmentFragment} \
      ~{true="-modifications" false="" modificationsModifications} \
      ~{true="-modifications" false="" modificationsModifications} \
      ~{true="-modifications" false="" modificationsModifications} \
      ~{true="-peptide" false="" peptidePeptide} \
      ~{true="-peptide" false="" peptidePeptide} \
      ~{true="-peptide" false="" peptidePeptide} \
      ~{true="-cross_linker" false="" crossCrossLinker} \
      ~{true="-cross_linker" false="" crossCrossLinker} \
      ~{true="-cross_linker" false="" crossCrossLinker} \
      ~{true="-cross_linker" false="" crossCrossLinker} \
      ~{true="-cross_linker" false="" crossCrossLinker} \
      ~{true="-algorithm" false="" algorithmAlgorithm} \
      ~{true="-algorithm" false="" algorithmAlgorithm} \
      ~{true="-algorithm" false="" algorithmAlgorithm} \
      ~{if defined(outOutXQuestXml) then ("-out_xquestxml " +  '"' + outOutXQuestXml + '"') else ""} \
      ~{if defined(outOutXQuestSpecXml) then ("-out_xquest_specxml " +  '"' + outOutXQuestSpecXml + '"') else ""} \
      ~{if defined(outOutIdxml) then ("-out_idXML " +  '"' + outOutIdxml + '"') else ""} \
      ~{if defined(outOutMzIdentMl) then ("-out_mzIdentML " +  '"' + outOutMzIdentMl + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}