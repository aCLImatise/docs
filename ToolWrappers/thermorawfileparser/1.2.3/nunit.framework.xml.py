from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Nunit_Framework_Xml_V0_1_0 = CommandToolBuilder(tool="nunit.framework.xml", base_command=["nunit.framework.xml"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nunit_Framework_Xml_V0_1_0().translate("wdl", allow_empty_container=True)

