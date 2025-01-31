from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fastq_Filter_N_V0_1_0 = CommandToolBuilder(tool="fastq_filter_n", base_command=["fastq_filter_n"], inputs=[], outputs=[], container="quay.io/biocontainers/fastq_utils:0.24.1--hfb9b9cc_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Filter_N_V0_1_0().translate("wdl")

