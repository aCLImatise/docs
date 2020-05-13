version 1.0

task Hmmpfam2 {
  input {
    Boolean nN
    String aA
    String eE
    String tT
    String zZ
    Boolean accAcc
    Boolean compatCompat
    String cpuCpu
    Boolean cutCutGa
    Boolean cutCutNc
    Boolean cutCutTc
    String domeDome
    String doDoMt
    Boolean forwardForward
    String inInFormat
    Boolean null2Null2
    Boolean pvmPvm
    Boolean xnuXnu
  }
  command <<<
    hmmpfam2 \
      ~{true="-n" false="" nN} \
      ~{if defined(aA) then ("-A " +  '"' + aA + '"') else ""} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(zZ) then ("-Z " +  '"' + zZ + '"') else ""} \
      ~{true="--acc" false="" accAcc} \
      ~{true="--compat" false="" compatCompat} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{true="--cut_ga" false="" cutCutGa} \
      ~{true="--cut_nc" false="" cutCutNc} \
      ~{true="--cut_tc" false="" cutCutTc} \
      ~{if defined(domeDome) then ("--domE " +  '"' + domeDome + '"') else ""} \
      ~{if defined(doDoMt) then ("--domT " +  '"' + doDoMt + '"') else ""} \
      ~{true="--forward" false="" forwardForward} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{true="--null2" false="" null2Null2} \
      ~{true="--pvm" false="" pvmPvm} \
      ~{true="--xnu" false="" xnuXnu}
  >>>
}