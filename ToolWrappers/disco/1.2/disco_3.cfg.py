from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Disco_3_Cfg_V0_1_0 = CommandToolBuilder(tool="disco_3.cfg", base_command=["disco_3.cfg"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Disco_3_Cfg_V0_1_0().translate("wdl", allow_empty_container=True)

