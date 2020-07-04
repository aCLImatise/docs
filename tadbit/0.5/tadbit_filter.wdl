version 1.0

task TadbitFilter {
  input {
    Boolean? force
    Boolean? resume
    File? workdir
    String? cpus
    Boolean? nox
    File? tmp_db
    Array[Int] path_ids
    Boolean? compress_input
    File? sam_tools
    String? format
    Boolean? valid
    Boolean? clean
    Array[Int] apply
    String? over_represented
    String? max_frag_size
    String? min_frag_size
    String? re_proximity
  }
  command <<<
    tadbit filter \
      ~{true="--force" false="" force} \
      ~{true="--resume" false="" resume} \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{true="--noX" false="" nox} \
      ~{if defined(tmp_db) then ("--tmpdb " +  '"' + tmp_db + '"') else ""} \
      ~{if defined(path_ids) then ("--pathids " +  '"' + path_ids + '"') else ""} \
      ~{true="--compress_input" false="" compress_input} \
      ~{if defined(sam_tools) then ("--samtools " +  '"' + sam_tools + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{true="--valid" false="" valid} \
      ~{true="--clean" false="" clean} \
      ~{if defined(apply) then ("--apply " +  '"' + apply + '"') else ""} \
      ~{if defined(over_represented) then ("--over_represented " +  '"' + over_represented + '"') else ""} \
      ~{if defined(max_frag_size) then ("--max_frag_size " +  '"' + max_frag_size + '"') else ""} \
      ~{if defined(min_frag_size) then ("--min_frag_size " +  '"' + min_frag_size + '"') else ""} \
      ~{if defined(re_proximity) then ("--re_proximity " +  '"' + re_proximity + '"') else ""}
  >>>
  parameter_meta {
    force: "overwrite previously run job"
    resume: "use filters of previously run job"
    workdir: "path to working directory (generated with the tool tadbit mapper)"
    cpus: "[8] Maximum number of CPU cores available in the execution host. If higher than 1, tasks with multi-threading capabilities will enabled (if 0 all available) cores will be used"
    nox: "no display server (X screen)"
    tmp_db: "if provided uses this directory to manipulate the database"
    path_ids: "Use as input data generated by a job under a given pathids. Use tadbit describe to find out which. To filter an intersected file produced with tadbit map --fast_fragment only one PATHid is needed otherwise one per read is needed, first for read 1, second for read 2."
    compress_input: "Compress input mapped files when parsing is done. This is done in background, while next MAP file is processed, or while reads are sorted."
    sam_tools: "path samtools binary"
    format: "[mid] for compression into pseudo-BAM format. Short contains only positions of reads mapped, mid everything but restriction sites."
    valid: "stores only valid-pairs discards filtered out reads."
    clean: "remove intermediate files. WARNING: together with format \"short\" or valid options, this may results in losing data"
    apply: "[[1, 2, 3, 4, 6, 7, 9, 10]] Use filters to define a set os valid pair of reads e.g.: '--apply 1 2 3 4 6 7 8 9'. Where these numberscorrespond to: 1: self-circle, 2: dangling-end, 3: error, 4: extra dangling-end, 5: too close from RES, 6: too short, 7: too large, 8: over-represented, 9: duplicated, 10: random breaks"
    over_represented: "[0.001%] percentage of restriction-enzyme (RE) genomic fragments with more coverage to exclude (possible PCR artifact)."
    max_frag_size: "[100000] to exclude large genomic RE fragments (probably resulting from gaps in the reference genome)"
    min_frag_size: "[50] to exclude small genomic RE fragments (smaller than sequenced reads)"
    re_proximity: "[5] to exclude read-ends falling too close from RE site (pseudo- dangling-ends)"
  }
}