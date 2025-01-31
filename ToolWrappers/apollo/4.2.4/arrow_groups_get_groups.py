from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Arrow_Groups_Get_Groups_V0_1_0 = CommandToolBuilder(tool="arrow_groups_get_groups", base_command=["arrow", "groups", "get_groups"], inputs=[ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="Only return group(s) with given name"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arrow_Groups_Get_Groups_V0_1_0().translate("wdl", allow_empty_container=True)

