from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Getsuperreadplacements_Perl_V0_1_0 = CommandToolBuilder(tool="getSuperReadPlacements.perl", base_command=["getSuperReadPlacements.perl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getsuperreadplacements_Perl_V0_1_0().translate("wdl", allow_empty_container=True)

