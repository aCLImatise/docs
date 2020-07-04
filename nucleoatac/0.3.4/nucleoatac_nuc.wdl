version 1.0

task NucleoatacNuc {
  input {
    String? bed
    String? vm_at
    String? bam
    String? out
    String? fast_a
    String? pwm
    String? sizes
    String? occ_track
    String? cores
    Boolean? write_all
    Boolean? not_atac
    Float? min_z
    Float? min_lr
    Int? nuc_sep
    Int? redundant_sep
    Int? sd
  }
  command <<<
    nucleoatac nuc \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(vm_at) then ("--vmat " +  '"' + vm_at + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(pwm) then ("--pwm " +  '"' + pwm + '"') else ""} \
      ~{if defined(sizes) then ("--sizes " +  '"' + sizes + '"') else ""} \
      ~{if defined(occ_track) then ("--occ_track " +  '"' + occ_track + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{true="--write_all" false="" write_all} \
      ~{true="--not_atac" false="" not_atac} \
      ~{if defined(min_z) then ("--min_z " +  '"' + min_z + '"') else ""} \
      ~{if defined(min_lr) then ("--min_lr " +  '"' + min_lr + '"') else ""} \
      ~{if defined(nuc_sep) then ("--nuc_sep " +  '"' + nuc_sep + '"') else ""} \
      ~{if defined(redundant_sep) then ("--redundant_sep " +  '"' + redundant_sep + '"') else ""} \
      ~{if defined(sd) then ("--sd " +  '"' + sd + '"') else ""}
  >>>
  parameter_meta {
    bed: "Regions for which to do stuff."
    vm_at: "VMat object"
    bam: "Accepts sorted BAM file"
    out: "give output basename"
    fast_a: "Indexed fasta file"
    pwm: "PWM descriptor file. Default is Human.PWM.txt included in package"
    sizes: "File with fragment size distribution. Use if don't want calculation of fragment size"
    occ_track: "bgzip compressed, tabix-indexed bedgraph file with occcupancy track. Otherwise occ not determined for nuc positions."
    cores: "Number of cores to use"
    write_all: "write all tracks"
    not_atac: "data is not atac-seq"
    min_z: "Z-score threshold for nucleosome calls. Default is 3"
    min_lr: "Log likelihood ratio threshold for nucleosome calls. Default is 0"
    nuc_sep: "Minimum separation between non-redundant nucleosomes. Default is 120"
    redundant_sep: "Minimum separation between redundant nucleosomes. Not recommended to be below 15. Default is 25"
    sd: "Standard deviation for smoothing. Affect the resolution at which nucleosomes can be positioned. Not recommended to exceed 25 or to be smaller than 10. Default is 10"
  }
}