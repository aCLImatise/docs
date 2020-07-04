class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gsutil_rb_url....cwl
inputs:
- id: continues_silently_printing
  doc: Continues silently (without printing error messages) despite errors when removing
    buckets. If some buckets couldn't be removed, gsutil's exit status will be non-zero
    even if this flag is set.
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- rb
- url...
