version 1.0

task Vcf2fasta {
  input {
    String? reference
    File? prefix
    Int? default_ploidy
    File? var_file
  }
  command <<<
    vcf2fasta \
      ~{var_file} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(default_ploidy) then ("--default-ploidy " +  '"' + default_ploidy + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference: "Use this reference when decomposing samples."
    prefix: "Affix this output prefix to each file, none by default"
    default_ploidy: "Set a default ploidy for samples which do not have information in the first record (2)."
    var_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
  }
}