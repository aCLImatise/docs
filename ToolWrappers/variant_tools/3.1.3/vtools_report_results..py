from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Vtools_Report_Results__V0_1_0 = CommandToolBuilder(tool="vtools_report_results.", base_command=["vtools_report", "results."], inputs=[ToolInput(tag="in_v_tools_report", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vtools_Report_Results__V0_1_0().translate("wdl", allow_empty_container=True)

