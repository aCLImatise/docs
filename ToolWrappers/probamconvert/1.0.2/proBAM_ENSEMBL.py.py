from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Probam_Ensembl_Py_V0_1_0 = CommandToolBuilder(tool="proBAM_ENSEMBL.py", base_command=["proBAM_ENSEMBL.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Probam_Ensembl_Py_V0_1_0().translate("wdl", allow_empty_container=True)

