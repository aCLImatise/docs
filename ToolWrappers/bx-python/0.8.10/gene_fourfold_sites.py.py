from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gene_Fourfold_Sites_Py_V0_1_0 = CommandToolBuilder(tool="gene_fourfold_sites.py", base_command=["gene_fourfold_sites.py"], inputs=[], outputs=[], container="quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gene_Fourfold_Sites_Py_V0_1_0().translate("wdl")

