version 1.0

task SparseMash {
  input {
    String? dbname
    String? query
    Boolean? read
  }
  command <<<
    sparse mash \
      ~{if defined(dbname) then ("--dbname " +  '"' + dbname + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{true="--read" false="" read}
  >>>
  parameter_meta {
    dbname: "Name for the database folder. REQUIRED."
    query: "A genome in fasta format, or a set of reads in fastq format. REQUIRED. "
    read: "Specify if query is a read set rather than an assembly."
  }
}