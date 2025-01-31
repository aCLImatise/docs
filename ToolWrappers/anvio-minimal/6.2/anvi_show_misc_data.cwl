class: CommandLineTool
id: anvi_show_misc_data.cwl
inputs:
- id: in_pan_or_profile_db
  doc: "Anvi'o pan or profile database (and even genes\ndatabase in appropriate contexts)."
  type: string?
  inputBinding:
    prefix: --pan-or-profile-db
- id: in_target_data_table
  doc: "The target table is the table you are interested in\naccessing. Currently\
    \ it can be 'items','layers', or\n'layer_orders'. Please see most up-to-date online\n\
    documentation for more information."
  type: string?
  inputBinding:
    prefix: --target-data-table
- id: in_target_data_group
  doc: "Data group to focus. Anvi'o misc data tables support\nassociating a set of\
    \ data keys with a data group. If\nyou have no idea what this is, then probably\
    \ you don't\nneed it, and anvi'o will take care of you. Note: this\nflag is IRRELEVANT\
    \ if you are working with additional\norder data tables.\n"
  type: string?
  inputBinding:
    prefix: --target-data-group
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-show-misc-data
