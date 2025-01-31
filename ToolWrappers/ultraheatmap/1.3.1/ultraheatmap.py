from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ultraheatmap_V0_1_0 = CommandToolBuilder(tool="ultraheatmap", base_command=["ultraheatmap"], inputs=[ToolInput(tag="in_compute_ordered_matrix", input_type=String(), position=0, doc=InputDocumentation(doc="addFeatureToMatrix"))], outputs=[], container="quay.io/biocontainers/ultraheatmap:1.3.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ultraheatmap_V0_1_0().translate("wdl")

