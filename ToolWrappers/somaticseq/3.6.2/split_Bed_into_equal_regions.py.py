from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Split_Bed_Into_Equal_Regions_Py_V0_1_0 = CommandToolBuilder(tool="split_Bed_into_equal_regions.py", base_command=["split_Bed_into_equal_regions.py"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="Input merged BED file (default: None)")), ToolInput(tag="in_output_files", input_type=File(optional=True), prefix="--output-files", doc=InputDocumentation(doc="Output BED file (default: <_io.TextIOWrapper\nname='<stdout>' mode='w' encoding='utf-8'>)\n"))], outputs=[ToolOutput(tag="out_output_files", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_files", type_hint=File()), doc=OutputDocumentation(doc="Output BED file (default: <_io.TextIOWrapper\nname='<stdout>' mode='w' encoding='utf-8'>)\n"))], container="quay.io/biocontainers/somaticseq:3.6.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Split_Bed_Into_Equal_Regions_Py_V0_1_0().translate("wdl")

