from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Pretextmap_Noext_V0_1_0 = CommandToolBuilder(tool="PretextMap.noext", base_command=["PretextMap.noext"], inputs=[ToolInput(tag="in_sort_order", input_type=Boolean(optional=True), prefix="--sortorder", doc=InputDocumentation(doc="({descend}, ascend)")), ToolInput(tag="in_filter_include", input_type=String(optional=True), prefix="--filterInclude", doc=InputDocumentation(doc="'seq_ [, seq_]*'")), ToolInput(tag="in_filter_exclude", input_type=Boolean(optional=True), prefix="--filterExclude", doc=InputDocumentation(doc="'seq_ [, seq_]*')"))], outputs=[], container="quay.io/biocontainers/pretextmap:0.1.5--h7d875b9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pretextmap_Noext_V0_1_0().translate("wdl")

