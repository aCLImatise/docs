from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Interop_Plot_Qscore_Histogram_V0_1_0 = CommandToolBuilder(tool="interop_plot_qscore_histogram", base_command=["interop_plot_qscore_histogram"], inputs=[ToolInput(tag="in_filter_by_lane", input_type=Boolean(optional=True), prefix="--filter-by-lane", doc=InputDocumentation(doc="[]: Only the data for the selected lane will be displayed")), ToolInput(tag="in_filter_by_channel", input_type=Boolean(optional=True), prefix="--filter-by-channel", doc=InputDocumentation(doc="[]: Only the data for the selected channel will be displayed")), ToolInput(tag="in_filter_by_base", input_type=Boolean(optional=True), prefix="--filter-by-base", doc=InputDocumentation(doc="[]: Only the data for the selected base will be displayed")), ToolInput(tag="in_filter_by_surface", input_type=Boolean(optional=True), prefix="--filter-by-surface", doc=InputDocumentation(doc="[]: Only the data for the selected surface will be displayed")), ToolInput(tag="in_filter_by_read", input_type=Boolean(optional=True), prefix="--filter-by-read", doc=InputDocumentation(doc="[]: Only the data for the selected read will be displayed")), ToolInput(tag="in_filter_by_cycle", input_type=Boolean(optional=True), prefix="--filter-by-cycle", doc=InputDocumentation(doc="[]: Only the data for the selected cycle will be displayed")), ToolInput(tag="in_filter_by_tile_number", input_type=Boolean(optional=True), prefix="--filter-by-tile-number", doc=InputDocumentation(doc="[]: Only the data for the selected tile number will be displayed")), ToolInput(tag="in_filter_by_swath", input_type=Boolean(optional=True), prefix="--filter-by-swath", doc=InputDocumentation(doc="[]: Only the data for the selected swath will be displayed")), ToolInput(tag="in_filter_by_section", input_type=Boolean(optional=True), prefix="--filter-by-section", doc=InputDocumentation(doc="[]: Only the data for the selected section will be displayed")), ToolInput(tag="in_option_two", input_type=Int(optional=True), prefix="--option2", doc=InputDocumentation(doc="")), ToolInput(tag="in_option_one", input_type=Int(optional=True), prefix="--option1", doc=InputDocumentation(doc="")), ToolInput(tag="in_run_folder", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/illumina-interop:1.1.23--h1b792b2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Interop_Plot_Qscore_Histogram_V0_1_0().translate("wdl")

