from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gmapindex_V0_1_0 = CommandToolBuilder(tool="gmapindex", base_command=["gmapindex"], inputs=[], outputs=[], container="quay.io/biocontainers/gmap:2021.02.22--pl526h2f06484_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gmapindex_V0_1_0().translate("wdl")

