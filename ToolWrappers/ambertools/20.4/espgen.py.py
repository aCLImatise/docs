from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Espgen_Py_V0_1_0 = CommandToolBuilder(tool="espgen.py", base_command=["espgen.py"], inputs=[ToolInput(tag="in_input_file_name", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input file name")), ToolInput(tag="in_output_file_name", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output file name")), ToolInput(tag="in_software_version_default", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="Software version [Default is gau (means Gaussian),\nother option is gms (means GAMESS-US)]\n"))], outputs=[ToolOutput(tag="out_output_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_name", type_hint=File()), doc=OutputDocumentation(doc="Output file name"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Espgen_Py_V0_1_0().translate("wdl", allow_empty_container=True)

