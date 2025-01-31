version 1.0

task FalconcM4filt {
  input {
    Boolean? help_syntax
    Boolean? _idtstage_float
    Boolean? idt_stage_two
    Boolean? minlen_int_reads
    Boolean? min_cov
    Boolean? max_cov
    Boolean? max_diff
    Boolean? high_copy_sample_rate
    Boolean? bestn_int_keep
    Boolean? min_overhang
    Boolean? min_depth
    Boolean? gap_filt
    Boolean? keep_intermediates
    Boolean? _nproc_int
    Boolean? in_fn
    Boolean? _filterlogfn_string
    File o__outfn
  }
  command <<<
    falconc m4filt \
      ~{o__outfn} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_idtstage_float) then "-i" else ""} \
      ~{if (idt_stage_two) then "--idt-stage2" else ""} \
      ~{if (minlen_int_reads) then "-m" else ""} \
      ~{if (min_cov) then "--min-cov" else ""} \
      ~{if (max_cov) then "--max-cov" else ""} \
      ~{if (max_diff) then "--max-diff" else ""} \
      ~{if (high_copy_sample_rate) then "--high-copy-sample-rate" else ""} \
      ~{if (bestn_int_keep) then "-b" else ""} \
      ~{if (min_overhang) then "--min-overhang" else ""} \
      ~{if (min_depth) then "--min-depth" else ""} \
      ~{if (gap_filt) then "--gap-filt" else ""} \
      ~{if (keep_intermediates) then "--keepIntermediates" else ""} \
      ~{if (_nproc_int) then "-n" else ""} \
      ~{if (in_fn) then "--in-fn" else ""} \
      ~{if (_filterlogfn_string) then "-f" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nim-falcon:3.0.2--h1341992_0"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _idtstage_float: "=, --idt-stage1=        float   90.0      Stage one percent identity filter,\\nformatted as percentage, overlaps\\n< %idt are skipped"
    idt_stage_two: "=             float   90.0      Stage two percent identify filter"
    minlen_int_reads: "=, --min-len=           int     6000      Minimum read length, reads shorter\\nthan minLen will be discarded"
    min_cov: "=                int     2         Minimum number of overlaps on\\neither side of a read"
    max_cov: "=                int     200       Maximum number of overlaps on\\neither side of a read"
    max_diff: "=               int     100       Reads are skipped is abs(5p-3p)\\noverlap counts > maxDiff"
    high_copy_sample_rate: "=  float   1.0       Downsample reads from high copy\\nelements to expected coverage\\nmaxCov*rate [0=discard reads]"
    bestn_int_keep: "=, --bestn=             int     10        Keep N best overlaps at 5prime AND\\n3prime of a read"
    min_overhang: "=           int     0         Minimum amount of overhang bases\\nin an overlap to keep the overlap"
    min_depth: "=              int     2         Depths lower than minDepth are\\nconsidered gaps"
    gap_filt: "bool    false     Run depth filter, takes a little\\nmore time"
    keep_intermediates: "bool    false     set keepIntermediates"
    _nproc_int: "=, --n-proc=            int     24        Number of processes to run locally"
    in_fn: "=                  string  REQUIRED  M4 overlaps file"
    _filterlogfn_string: "=, --filter-log-fn=     string  REQUIRED  Write read filter stats to this"
    o__outfn: "-o=, --out-fn=            string  REQUIRED  Final m4 overlaps file"
  }
  output {
    File out_stdout = stdout()
  }
}