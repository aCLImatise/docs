from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

Compute_Prior_Dist_V0_1_0 = CommandToolBuilder(tool="compute_prior_dist", base_command=["compute-prior-dist"], inputs=[ToolInput(tag="in_num_bins", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_psp_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compute_Prior_Dist_V0_1_0().translate("wdl", allow_empty_container=True)

