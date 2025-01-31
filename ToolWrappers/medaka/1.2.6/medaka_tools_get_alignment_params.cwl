class: CommandLineTool
id: medaka_tools_get_alignment_params.cwl
inputs:
- id: in_model
  doc: "Model to use. {r103_min_high_g345, r103_min_high_g360,\nr103_prom_high_g360,\
    \ r103_prom_snp_g3210,\nr103_prom_variant_g3210, r10_min_high_g303,\nr10_min_high_g340,\
    \ r941_min_fast_g303, r941_min_high_g303,\nr941_min_high_g330, r941_min_high_g340_rle,\n\
    r941_min_high_g344, r941_min_high_g351, r941_min_high_g360,\nr941_prom_fast_g303,\
    \ r941_prom_high_g303,\nr941_prom_high_g330, r941_prom_high_g344,\nr941_prom_high_g360,\
    \ r941_prom_high_g4011,\nr941_prom_snp_g303, r941_prom_snp_g322, r941_prom_snp_g360,\n\
    r941_prom_variant_g303, r941_prom_variant_g322,\nr941_prom_variant_g360} (default:\
    \ r941_min_high_g360)\n"
  type: long?
  inputBinding:
    prefix: --model
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/medaka:1.2.6--py38h64b100c_0
cwlVersion: v1.1
baseCommand:
- medaka
- tools
- get_alignment_params
