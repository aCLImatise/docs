version 1.0

task Obiaddtaxids {
  input {
    File? database
    File? taxonomy_dump
  }
  command <<<
    obiaddtaxids \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(taxonomy_dump) then ("--taxonomy-dump " +  '"' + taxonomy_dump + '"') else ""}
  >>>
  parameter_meta {
    database: "ecoPCR taxonomy Database name"
    taxonomy_dump: "NCBI Taxonomy dump repository name"
  }
}