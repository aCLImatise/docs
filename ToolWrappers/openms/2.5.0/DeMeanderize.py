from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Demeanderize_V0_1_0 = CommandToolBuilder(tool="DeMeanderize", base_command=["DeMeanderize"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*              Input experiment file, containing the wrongly sorted spectra. (valid formats: 'mzML')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*             Output experiment file with correctly sorted spectra. (valid formats: 'mzML')")), ToolInput(tag="in_num_spots_per_row", input_type=Int(optional=True), prefix="-num_spots_per_row", doc=InputDocumentation(doc="Number of spots in one column, until next row is spotted. (default: '48' min: '1')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="*             Output experiment file with correctly sorted spectra. (valid formats: 'mzML')"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Demeanderize_V0_1_0().translate("wdl", allow_empty_container=True)

