class: CommandLineTool
id: halMaskExtract.cwl
inputs:
- id: in_cache_bytes
  doc: ":   maximum size in bytes of regular hdf5 cache [default =\n15728640]"
  type: long?
  inputBinding:
    prefix: --cacheBytes
- id: in_cache_mdc
  doc: ':     number of metadata slots in hdf5 cache [default = 113]'
  type: long?
  inputBinding:
    prefix: --cacheMDC
- id: in_cacher_dc
  doc: ":     number of regular slots in hdf5 cache.  should be a prime\nnumber ~=\
    \ 10 * DefaultCacheRDCBytes / chunk [default =\n599999]"
  type: long?
  inputBinding:
    prefix: --cacheRDC
- id: in_cache_w_zero
  doc: ':      w0 parameter fro hdf5 cache [default = 0.75]'
  type: long?
  inputBinding:
    prefix: --cacheW0
- id: in_extend
  doc: ':       extend masked regions by given num. of bases. [default = 0]'
  type: long?
  inputBinding:
    prefix: --extend
- id: in_extend_pct
  doc: ":    extend masked regions by percentage of their lengths [default\n= 0]"
  type: long?
  inputBinding:
    prefix: --extendPct
- id: in_in_memory
  doc: ":             load all data in memory (and disable hdf5 cache) [default =\n\
    0]"
  type: boolean?
  inputBinding:
    prefix: --inMemory
- id: in_mask_file
  doc: ':     path to bed file to write to [default = stdout]'
  type: File?
  inputBinding:
    prefix: --maskFile
- id: in_hal_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_genome
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- halMaskExtract
