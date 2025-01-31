from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hmmgs_Stats_V0_1_0 = CommandToolBuilder(tool="hmmgs_stats", base_command=["hmmgs", "stats"], inputs=[ToolInput(tag="in_bloom_filter_stats", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_bloom_filter", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hmmgs_Stats_V0_1_0().translate("wdl", allow_empty_container=True)

