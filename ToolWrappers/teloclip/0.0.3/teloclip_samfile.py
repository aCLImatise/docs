from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Teloclip_Samfile_V0_1_0 = CommandToolBuilder(tool="teloclip_samfile", base_command=["teloclip", "samfile"], inputs=[ToolInput(tag="in_max_break", input_type=Int(optional=True), prefix="--maxBreak", doc=InputDocumentation(doc="")), ToolInput(tag="in_min_clip", input_type=Int(optional=True), prefix="--minClip", doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_idx", input_type=String(optional=True), prefix="--refIdx", doc=InputDocumentation(doc="")), ToolInput(tag="in_telo_clip", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Teloclip_Samfile_V0_1_0().translate("wdl", allow_empty_container=True)

