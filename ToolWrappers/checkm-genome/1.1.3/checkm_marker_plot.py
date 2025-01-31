from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Directory, Float, Boolean

Checkm_Marker_Plot_V0_1_0 = CommandToolBuilder(tool="checkm_marker_plot", base_command=["checkm", "marker_plot"], inputs=[ToolInput(tag="in_image_type", input_type=String(optional=True), prefix="--image_type", doc=InputDocumentation(doc="desired image type (default: png)")), ToolInput(tag="in_dpi", input_type=Int(optional=True), prefix="--dpi", doc=InputDocumentation(doc="desired DPI of output image (default: 600)")), ToolInput(tag="in_font_size", input_type=Int(optional=True), prefix="--font_size", doc=InputDocumentation(doc="Desired font size (default: 8)")), ToolInput(tag="in_extension", input_type=Directory(optional=True), prefix="--extension", doc=InputDocumentation(doc="extension of bins (other files in directory are ignored) (default: fna)")), ToolInput(tag="in_width", input_type=Float(optional=True), prefix="--width", doc=InputDocumentation(doc="width of output image (default: 6.5)")), ToolInput(tag="in_height", input_type=Float(optional=True), prefix="--height", doc=InputDocumentation(doc="height of output image (default: 6.5)")), ToolInput(tag="in_fig_padding", input_type=Float(optional=True), prefix="--fig_padding", doc=InputDocumentation(doc="white space to place around figure (in inches) (default: 0.2)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="suppress console output")), ToolInput(tag="in_results_dir", input_type=String(), position=0, doc=InputDocumentation(doc="directory specified during qa command")), ToolInput(tag="in_bin_dir", input_type=String(), position=1, doc=InputDocumentation(doc="directory containing bins to plot (fasta format)")), ToolInput(tag="in_output_dir", input_type=String(), position=2, doc=InputDocumentation(doc="directory to hold plots"))], outputs=[], container="quay.io/biocontainers/checkm-genome:1.1.3--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checkm_Marker_Plot_V0_1_0().translate("wdl")

