from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Protfdrmprophet2Mayu_Py_V0_1_0 = CommandToolBuilder(tool="ProtFDRmProphet2Mayu.py", base_command=["ProtFDRmProphet2Mayu.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Protfdrmprophet2Mayu_Py_V0_1_0().translate("wdl", allow_empty_container=True)

