from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Download_Taxonomy_Sh_V0_1_0 = CommandToolBuilder(tool="download_taxonomy.sh", base_command=["download-taxonomy.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Download_Taxonomy_Sh_V0_1_0().translate("wdl")

