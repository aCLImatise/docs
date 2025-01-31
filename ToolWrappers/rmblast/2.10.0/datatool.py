from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Datatool_V0_1_0 = CommandToolBuilder(tool="datatool", base_command=["datatool"], inputs=[], outputs=[], container="quay.io/biocontainers/rmblast:2.10.0--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Datatool_V0_1_0().translate("wdl")

