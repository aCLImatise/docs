from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Merge_Pairs_Sh_Pairix_Cp_V0_1_0 = CommandToolBuilder(tool="merge_pairs.sh_pairix_cp", base_command=["merge-pairs.sh", "pairix", "cp"], inputs=[ToolInput(tag="in_write_to_stdout", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Write to stdout")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Force")), ToolInput(tag="in_test_file_integrity", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="Test file integrity")), ToolInput(tag="in_cft", input_type=Boolean(optional=True), prefix="-cft", doc=InputDocumentation(doc="")), ToolInput(tag="in_gunzip", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merge_Pairs_Sh_Pairix_Cp_V0_1_0().translate("wdl", allow_empty_container=True)

