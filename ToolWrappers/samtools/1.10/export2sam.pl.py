from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Export2Sam_Pl_V0_1_0 = CommandToolBuilder(tool="export2sam.pl", base_command=["export2sam.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Export2Sam_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

