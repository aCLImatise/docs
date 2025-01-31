from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, Int, Float, Boolean

Tombo_Filter_Raw_Signal_Matching_V0_1_0 = CommandToolBuilder(tool="tombo_filter_raw_signal_matching", base_command=["tombo", "filter", "raw_signal_matching"], inputs=[ToolInput(tag="in_fast_five_based_irs", input_type=Array(t=Int(), optional=True), prefix="--fast5-basedirs", doc=InputDocumentation(doc="Directories containing fast5 files.")), ToolInput(tag="in_signal_matching_score", input_type=Float(optional=True), prefix="--signal-matching-score", doc=InputDocumentation(doc="Observed to expected signal matching score (higher\nscore indicates poor matching). Sample type defaults:\nRNA : 2 || DNA : 1.1")), ToolInput(tag="in_corrected_group", input_type=Int(optional=True), prefix="--corrected-group", doc=InputDocumentation(doc="FAST5 group created by resquiggle command. Default:\nRawGenomeCorrected_000")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Don't print status information."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tombo_Filter_Raw_Signal_Matching_V0_1_0().translate("wdl", allow_empty_container=True)

