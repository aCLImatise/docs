from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Deepvariant_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".deepvariant_post_link.sh", base_command=[".deepvariant-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/deepvariant:1.1.0--py36hf3e76ba_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Deepvariant_Post_Link_Sh_V0_1_0().translate("wdl")

