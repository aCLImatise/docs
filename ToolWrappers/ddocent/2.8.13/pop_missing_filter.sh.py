from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pop_Missing_Filter_Sh_V0_1_0 = CommandToolBuilder(tool="pop_missing_filter.sh", base_command=["pop_missing_filter.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/ddocent:2.8.13--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pop_Missing_Filter_Sh_V0_1_0().translate("wdl")

