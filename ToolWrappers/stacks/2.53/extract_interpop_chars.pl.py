from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Extract_Interpop_Chars_Pl_V0_1_0 = CommandToolBuilder(tool="extract_interpop_chars.pl", base_command=["extract_interpop_chars.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Interpop_Chars_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

