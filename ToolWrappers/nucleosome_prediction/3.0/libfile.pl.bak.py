from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Libfile_Pl_Bak_V0_1_0 = CommandToolBuilder(tool="libfile.pl.bak", base_command=["libfile.pl.bak"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Libfile_Pl_Bak_V0_1_0().translate("wdl", allow_empty_container=True)

