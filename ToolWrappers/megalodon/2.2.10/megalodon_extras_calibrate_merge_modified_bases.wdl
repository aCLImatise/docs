version 1.0

task MegalodonExtrasCalibrateMergeModifiedBases {
  input {
    File? out_filename
    File? overwrite
  }
  command <<<
    megalodon_extras calibrate merge_modified_bases \
      ~{if defined(out_filename) then ("--out-filename " +  '"' + out_filename + '"') else ""} \
      ~{if (overwrite) then "--overwrite" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/megalodon:2.2.10--py38h0213d0e_0"
  }
  parameter_meta {
    out_filename: "Filename to output calibration values. Default:\\nmegalodon_mod_calibration.npz"
    overwrite: "Overwrite --out-filename if it exists."
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
    File out_overwrite = "${in_overwrite}"
  }
}