version 1.0

task RnftoolsSam2rnf {
  input {
    File? sam
    File? rnf_fast_q
    File? fa_idx
    Int? genome_id
    Boolean? allow_unmapped
  }
  command <<<
    rnftools sam2rnf \
      ~{if defined(sam) then ("--sam " +  '"' + sam + '"') else ""} \
      ~{if defined(rnf_fast_q) then ("--rnf-fastq " +  '"' + rnf_fast_q + '"') else ""} \
      ~{if defined(fa_idx) then ("--faidx " +  '"' + fa_idx + '"') else ""} \
      ~{if defined(genome_id) then ("--genome-id " +  '"' + genome_id + '"') else ""} \
      ~{true="--allow-unmapped" false="" allow_unmapped}
  >>>
  parameter_meta {
    sam: "Input SAM/BAM with true (expected) alignments of the reads (- for standard input)."
    rnf_fast_q: "Output FASTQ file (- for standard output)."
    fa_idx: "FAI index of the reference FASTA file (- for standard input). It can be created using 'samtools faidx'."
    genome_id: "Genome ID in RNF (default: 1)."
    allow_unmapped: "Allow unmapped reads."
  }
}