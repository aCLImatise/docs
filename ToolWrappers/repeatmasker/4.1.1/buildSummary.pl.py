from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Buildsummary_Pl_V0_1_0 = CommandToolBuilder(tool="buildSummary.pl", base_command=["buildSummary.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/repeatmasker:4.1.1--pl526_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Buildsummary_Pl_V0_1_0().translate("wdl")

