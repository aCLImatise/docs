class: CommandLineTool
id: AWSSDK.CloudWatchLogs.pdb.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/thermorawfileparser:1.3.2--0
cwlVersion: v1.1
baseCommand:
- AWSSDK.CloudWatchLogs.pdb
