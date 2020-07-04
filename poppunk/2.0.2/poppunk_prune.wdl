version 1.0

task PoppunkPrune {
  input {
    String? remove
    String? distances
    String? ref_db
    String? prefix_output_files
    Boolean? re_sketch
    Boolean? use_mash
    String? mash
    String? threads
  }
  command <<<
    poppunk_prune \
      ~{if defined(remove) then ("--remove " +  '"' + remove + '"') else ""} \
      ~{if defined(distances) then ("--distances " +  '"' + distances + '"') else ""} \
      ~{if defined(ref_db) then ("--ref-db " +  '"' + ref_db + '"') else ""} \
      ~{if defined(prefix_output_files) then ("--output " +  '"' + prefix_output_files + '"') else ""} \
      ~{true="--resketch" false="" re_sketch} \
      ~{true="--use-mash" false="" use_mash} \
      ~{if defined(mash) then ("--mash " +  '"' + mash + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    remove: "File listing sequences to remove (required)"
    distances: "Prefix of input pickle of pre-calculated distances (required)"
    ref_db: "Location of reference db, if resketching"
    prefix_output_files: "Prefix for output files (required)"
    re_sketch: "Resketch the non-excluded sequences (mash-only) [default = False]"
    use_mash: "Use the old mash sketch backend [default = False]"
    mash: "Location of mash executable"
    threads: "Number of threads to use [default = 1]"
  }
}