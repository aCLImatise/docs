from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Crispritz_Py_V0_1_0 = CommandToolBuilder(tool="crispritz.py", base_command=["crispritz.py"], inputs=[], outputs=[], container="quay.io/biocontainers/crispritz:2.5.4--py36h0bca50a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crispritz_Py_V0_1_0().translate("wdl")

