from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Maf_Translate_Chars_Py_V0_1_0 = CommandToolBuilder(tool="maf_translate_chars.py", base_command=["maf_translate_chars.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf_Translate_Chars_Py_V0_1_0().translate("wdl", allow_empty_container=True)

