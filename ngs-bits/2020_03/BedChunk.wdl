version 1.0

task BedChunk {
  input {
    Int? desired_chunk_size
    File? in
    File? out
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BedChunk \
      ~{if defined(desired_chunk_size) then ("-n " +  '"' + desired_chunk_size + '"') else ""} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    desired_chunk_size: "The desired chunk size. Note: Not all chunks will have this size. Regions are split to chunks that are closest to the the desired size."
    in: "Input BED file. If unset, reads from STDIN. Default value: ''"
    out: "Output BED file. If unset, writes to STDOUT. Default value: ''"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}