from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cur__V0_1_0 = CommandToolBuilder(tool="Cur+", base_command=["Cur+"], inputs=[], outputs=[], container="quay.io/biocontainers/curves:3.0.0--hc99cbb1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cur__V0_1_0().translate("wdl")

