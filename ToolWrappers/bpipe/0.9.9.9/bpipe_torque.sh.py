from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bpipe_Torque_Sh_V0_1_0 = CommandToolBuilder(tool="bpipe_torque.sh", base_command=["bpipe-torque.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bpipe_Torque_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

