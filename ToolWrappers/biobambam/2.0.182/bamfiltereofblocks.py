from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bamfiltereofblocks_V0_1_0 = CommandToolBuilder(tool="bamfiltereofblocks", base_command=["bamfiltereofblocks"], inputs=[], outputs=[], container="quay.io/biocontainers/biobambam:2.0.182--h7d875b9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamfiltereofblocks_V0_1_0().translate("wdl")

