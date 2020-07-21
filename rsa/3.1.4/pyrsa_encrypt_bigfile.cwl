class: CommandLineTool
id: ../../../pyrsa_encrypt_bigfile.cwl
inputs:
- id: input
  doc: Name of the file to encrypt. Reads from stdin if not specified.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: Name of the file to write the encrypted file to. Written to stdout if this
    option is not present.
  type: string
  inputBinding:
    prefix: --output
- id: key_form
  doc: Key format of the public key - default PEM
  type: string
  inputBinding:
    prefix: --keyform
- id: public_key
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pyrsa-encrypt-bigfile
