from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pretty_Table_Py_V0_1_0 = CommandToolBuilder(tool="pretty_table.py", base_command=["pretty_table.py"], inputs=[], outputs=[], container="quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pretty_Table_Py_V0_1_0().translate("wdl")

