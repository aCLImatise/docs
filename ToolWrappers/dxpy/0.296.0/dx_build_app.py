from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dx_Build_App_V0_1_0 = CommandToolBuilder(tool="dx_build_app", base_command=["dx-build-app"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dx_Build_App_V0_1_0().translate("wdl", allow_empty_container=True)

