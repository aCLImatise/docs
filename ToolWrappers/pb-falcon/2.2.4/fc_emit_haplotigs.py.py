from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fc_Emit_Haplotigs_Py_V0_1_0 = CommandToolBuilder(tool="fc_emit_haplotigs.py", base_command=["fc_emit_haplotigs.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fc_Emit_Haplotigs_Py_V0_1_0().translate("wdl", allow_empty_container=True)

