version 1.0

task BedtoolsNuc {
  input {
    Boolean? fi
    Boolean? bed
    Boolean? profile_sequence_according
    Boolean? seq
    Boolean? pattern
    Boolean? ignore_case_pattern
    Boolean? full_header
  }
  command <<<
    bedtools nuc \
      ~{if (fi) then "-fi" else ""} \
      ~{if (bed) then "-bed" else ""} \
      ~{if (profile_sequence_according) then "-s" else ""} \
      ~{if (seq) then "-seq" else ""} \
      ~{if (pattern) then "-pattern" else ""} \
      ~{if (ignore_case_pattern) then "-C" else ""} \
      ~{if (full_header) then "-fullHeader" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0"
  }
  parameter_meta {
    fi: "Input FASTA file"
    bed: "BED/GFF/VCF file of ranges to extract from -fi"
    profile_sequence_according: "Profile the sequence according to strand."
    seq: "Print the extracted sequence"
    pattern: "Report the number of times a user-defined sequence\\nis observed (case-sensitive)."
    ignore_case_pattern: "Ignore case when matching -pattern. By defaulty, case matters."
    full_header: "Use full fasta header.\\n- By default, only the word before the first space or tab is used."
  }
  output {
    File out_stdout = stdout()
  }
}