from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Helpmod_Pm_V0_1_0 = CommandToolBuilder(tool="helpMod.pm", base_command=["helpMod.pm"], inputs=[], outputs=[], container="quay.io/biocontainers/braker2:2.1.6--hdfd78af_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Helpmod_Pm_V0_1_0().translate("wdl")

