from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mtsv_Tree_Build_Flags_V0_1_0 = CommandToolBuilder(tool="mtsv_tree_build_FLAGS", base_command=["mtsv-tree-build", "FLAGS"], inputs=[ToolInput(tag="in_index", input_type=String(optional=True), prefix="--index", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mtsv_Tree_Build_Flags_V0_1_0().translate("wdl", allow_empty_container=True)

