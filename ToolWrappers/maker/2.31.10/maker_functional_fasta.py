from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Maker_Functional_Fasta_V0_1_0 = CommandToolBuilder(tool="maker_functional_fasta", base_command=["maker_functional_fasta"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maker_Functional_Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

