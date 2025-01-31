from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Fasta_Utils_Uid_V0_1_0 = CommandToolBuilder(tool="fasta_utils_uid", base_command=["fasta-utils", "uid"], inputs=[ToolInput(tag="in_verbose", input_type=File(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Filename of a table to record the changes (by default\ndiscards it)")), ToolInput(tag="in_fast_a_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_Utils_Uid_V0_1_0().translate("wdl", allow_empty_container=True)

