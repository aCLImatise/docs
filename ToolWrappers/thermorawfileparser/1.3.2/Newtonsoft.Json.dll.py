from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Newtonsoft_Json_Dll_V0_1_0 = CommandToolBuilder(tool="Newtonsoft.Json.dll", base_command=["Newtonsoft.Json.dll"], inputs=[], outputs=[], container="quay.io/biocontainers/thermorawfileparser:1.3.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Newtonsoft_Json_Dll_V0_1_0().translate("wdl")

