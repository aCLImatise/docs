from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Openmcdf_Dll_V0_1_0 = CommandToolBuilder(tool="OpenMcdf.dll", base_command=["OpenMcdf.dll"], inputs=[], outputs=[], container="quay.io/biocontainers/thermorawfileparser:1.3.4--ha8f3691_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Openmcdf_Dll_V0_1_0().translate("wdl")

