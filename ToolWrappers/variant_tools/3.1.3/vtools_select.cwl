class: CommandLineTool
id: vtools_select.cwl
inputs:
- id: in_limiting_variants_samples
  doc: "[COND [COND ...]], --samples [COND [COND ...]]\nLimiting variants from samples\
    \ that match conditions\nthat use columns shown in command 'vtools show sample'\n\
    (e.g. 'aff=1', 'filename like \"MG%\"')."
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_destination_variant_table
  doc: "[TABLE [DESC ...]], --to_table [TABLE [DESC ...]]\nDestination variant table."
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_count
  doc: "Output number of variant, which is a shortcut to '--\noutput count(1)'."
  type: boolean?
  inputBinding:
    prefix: --count
- id: in_list_outputted_expressions
  doc: "[FIELDS [FIELDS ...]], --output [FIELDS [FIELDS ...]]\nA list of fields that\
    \ will be outputted. SQL-\ncompatible expressions or functions such as \"pos-1\"\
    ,\n\"count(1)\" or \"sum(num)\" are also allowed."
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_verbosity
  doc: "Output error and warning (0), info (1), debug (2) and\ntrace (3) information\
    \ to standard output (default to\n1)."
  type: string?
  inputBinding:
    prefix: --verbosity
- id: in_header
  doc: "[HEADER [HEADER ...]]\nA complete header or a list of names that will be\n\
    joined by a delimiter (parameter --delimiter). If a\nspecial name - is specified,\
    \ the header will be read\nfrom the standard input, which is the preferred way\
    \ to\nspecify large multi-line headers (e.g. cat myheader |\nvtools export --header\
    \ -). If this parameter is given\nwithout parameter, a default header will be\
    \ derived\nfrom field names."
  type: boolean?
  inputBinding:
    prefix: --header
- id: in_delimiter
  doc: "Delimiter use to separate columns of output. The\ndefault output uses tabs\
    \ to delimit columns padded to\nthe same width by spaces. You can use '-d,' for\
    \ csv\noutput, or -d'\\t' for unpadded tab-delimited output."
  type: string?
  inputBinding:
    prefix: --delimiter
- id: in_precision
  doc: "Precision used to output float numbers. The default\nvalue is None which uses\
    \ system default (e.g. whatever\nstr(number) outputs). You can set it to a positive\n\
    number (e.g. 4) to limit the number of digits to\noutput."
  type: double?
  inputBinding:
    prefix: --precision
- id: in_na
  doc: Output string for missing value
  type: string?
  inputBinding:
    prefix: --na
- id: in_limit
  doc: Limit output to the first N records.
  type: string?
  inputBinding:
    prefix: --limit
- id: in_build
  doc: "Output reference genome. If set to alternative build,\nchr and pos in the\
    \ fields will be replaced by alt_chr\nand alt_pos"
  type: string?
  inputBinding:
    prefix: --build
- id: in_group_output_fields
  doc: "[FIELD [FIELD ...]], --group_by [FIELD [FIELD ...]], --group-by [FIELD [FIELD\
    \ ...]]\nGroup output by fields. This option is useful for\naggregation output\
    \ where summary statistics are\ngrouped by one or more fields."
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_all
  doc: "Variant tools by default output only one of the\nrecords if a variant matches\
    \ multiple records in an\nannotation database. This option tells variant tools\n\
    to output all matching records."
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_order_by
  doc: "Order output by specified fields in ascending order,\nor descending order\
    \ if field name is followed by DESC\n(e.g. --order_by 'num DESC')\n"
  type: string[]
  inputBinding:
    prefix: --order_by
- id: in_from_table
  doc: Source variant table.
  type: string
  inputBinding:
    position: 0
- id: in_condition
  doc: "Conditions by which variants are selected. Multiple\narguments are automatically\
    \ joined by 'AND' so 'OR'\nconditions should be provided by a single argument\n\
    with conditions joined by 'OR'. If unspecified, all\nvariants (except those excluded\
    \ by parameter\n--samples) will be selected."
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
- vtools
- select
