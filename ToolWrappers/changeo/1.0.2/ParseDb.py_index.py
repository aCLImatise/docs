from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File

Parsedb_Py_Index_V0_1_0 = CommandToolBuilder(tool="ParseDb.py_index", base_command=["ParseDb.py", "index"], inputs=[ToolInput(tag="in_list_tab_defaultnone", input_type=Array(t=String(), optional=True), prefix="-d", doc=InputDocumentation(doc="A list of tab delimited database files. (default:\nNone)")), ToolInput(tag="in_explicit_output_file", input_type=Array(t=String(), optional=True), prefix="-o", doc=InputDocumentation(doc="Explicit output file name. Note, this argument cannot\nbe used with the --failed, --outdir, or --outname\narguments. If unspecified, then the output filename\nwill be based on the input filename(s). (default:\nNone)")), ToolInput(tag="in_outdir", input_type=File(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Specify to changes the output directory to the\nlocation specified. The input file directory is used\nif this is not specified. (default: None)")), ToolInput(tag="in_out_name", input_type=File(optional=True), prefix="--outname", doc=InputDocumentation(doc="Changes the prefix of the successfully processed\noutput file to the string specified. May not be\nspecified with multiple input files. (default: None)")), ToolInput(tag="in_name_index_field", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="The name of the index field to add to the database.\n(default: INDEX)\n"))], outputs=[], container="quay.io/biocontainers/changeo:1.0.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsedb_Py_Index_V0_1_0().translate("wdl")

