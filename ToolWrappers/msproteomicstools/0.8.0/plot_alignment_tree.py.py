from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Plot_Alignment_Tree_Py_V0_1_0 = CommandToolBuilder(tool="plot_alignment_tree.py", base_command=["plot_alignment_tree.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plot_Alignment_Tree_Py_V0_1_0().translate("wdl", allow_empty_container=True)

