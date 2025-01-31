from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Module_Enrichment_Py_Stats_V0_1_0 = CommandToolBuilder(tool="module_enrichment.py_stats", base_command=["module_enrichment.py", "stats"], inputs=[ToolInput(tag="in_modules", input_type=String(optional=True), prefix="--modules", doc=InputDocumentation(doc="")), ToolInput(tag="in_correl_s", input_type=String(optional=True), prefix="--correls", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/scnic:0.6.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Module_Enrichment_Py_Stats_V0_1_0().translate("wdl")

