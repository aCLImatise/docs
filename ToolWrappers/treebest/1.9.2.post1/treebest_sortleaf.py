from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Treebest_Sortleaf_V0_1_0 = CommandToolBuilder(tool="treebest_sortleaf", base_command=["treebest", "sortleaf"], inputs=[ToolInput(tag="in_tree_one", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_tree_two", input_type=Int(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Treebest_Sortleaf_V0_1_0().translate("wdl", allow_empty_container=True)

