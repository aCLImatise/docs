from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dadaist2_Metadata_V0_1_0 = CommandToolBuilder(tool="dadaist2_metadata", base_command=["dadaist2-metadata"], inputs=[], outputs=[], container="quay.io/biocontainers/dadaist2:0.7.7--hdfd78af_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dadaist2_Metadata_V0_1_0().translate("wdl")

