from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Vmatch_Pre_Unlink_Sh_V0_1_0 = CommandToolBuilder(tool=".vmatch_pre_unlink.sh", base_command=[".vmatch-pre-unlink.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Vmatch_Pre_Unlink_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

