from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Simkamincore_Info_V0_1_0 = CommandToolBuilder(tool="simkaMinCore_info", base_command=["simkaMinCore", "info"], inputs=[ToolInput(tag="in_in", input_type=Boolean(optional=True), prefix="-in", doc=InputDocumentation(doc="(1 arg) :    filename to a sketch file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Simkamincore_Info_V0_1_0().translate("wdl", allow_empty_container=True)

