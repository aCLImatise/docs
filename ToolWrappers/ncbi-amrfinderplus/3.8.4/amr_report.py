from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Amr_Report_V0_1_0 = CommandToolBuilder(tool="amr_report", base_command=["amr_report"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Amr_Report_V0_1_0().translate("wdl", allow_empty_container=True)

