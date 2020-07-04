version 1.0

task Sarscov2formatter {
  input {
    String? alignment
    String? metadata
  }
  command <<<
    sarscov2formatter \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""}
  >>>
  parameter_meta {
    alignment: "Mulitple sequence alignment file"
    metadata: "Metadata source (Use \"ncbi\" if using NCBI SARS-CoV-2 data, otherwise supply tabular file of the correct format)"
  }
}