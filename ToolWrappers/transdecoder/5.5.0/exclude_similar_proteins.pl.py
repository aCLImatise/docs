from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Exclude_Similar_Proteins_Pl_V0_1_0 = CommandToolBuilder(tool="exclude_similar_proteins.pl", base_command=["exclude_similar_proteins.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Exclude_Similar_Proteins_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

