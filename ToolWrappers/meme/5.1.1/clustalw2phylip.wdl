version 1.0

task Clustalw2phylip {
  input {
    Int clustalw_two_phy_i_lip
    File clustalw_file
  }
  command <<<
    clustalw2phylip \
      ~{clustalw_two_phy_i_lip} \
      ~{clustalw_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    clustalw_two_phy_i_lip: ""
    clustalw_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}