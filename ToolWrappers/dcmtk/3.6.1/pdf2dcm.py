from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Pdf2Dcm_V0_1_0 = CommandToolBuilder(tool="pdf2dcm", base_command=["pdf2dcm"], inputs=[ToolInput(tag="in_arguments", input_type=Boolean(optional=True), prefix="--arguments", doc=InputDocumentation(doc="print expanded command line arguments")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="quiet mode, print no warnings and errors")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbose mode, print processing details")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="debug mode, print debug information")), ToolInput(tag="in_log_level", input_type=Boolean(optional=True), prefix="--log-level", doc=InputDocumentation(doc="[l]evel: string constant\n(fatal, error, warn, info, debug, trace)\nuse level l for the logger")), ToolInput(tag="in_log_config", input_type=Boolean(optional=True), prefix="--log-config", doc=InputDocumentation(doc="[f]ilename: string\nuse config file f for the logger")), ToolInput(tag="in_annotation_no", input_type=Boolean(optional=True), prefix="--annotation-no", doc=InputDocumentation(doc="PDF does not contain patient identifying data")), ToolInput(tag="in_pdf_file_in", input_type=String(), position=0, doc=InputDocumentation(doc="PDF input filename to be converted")), ToolInput(tag="in_dcm_file_out", input_type=String(), position=1, doc=InputDocumentation(doc="DICOM output filename"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pdf2Dcm_V0_1_0().translate("wdl", allow_empty_container=True)

