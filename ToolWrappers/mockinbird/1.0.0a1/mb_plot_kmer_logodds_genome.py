from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mb_Plot_Kmer_Logodds_Genome_V0_1_0 = CommandToolBuilder(tool="mb_plot_kmer_logodds_genome", base_command=["mb-plot-kmer-logodds", "genome"], inputs=[ToolInput(tag="in_gff", input_type=String(optional=True), prefix="--gff", doc=InputDocumentation(doc="")), ToolInput(tag="in_km_er", input_type=String(optional=True), prefix="--kmer", doc=InputDocumentation(doc="")), ToolInput(tag="in_mb_plot_km_er_log_odds", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mb_Plot_Kmer_Logodds_Genome_V0_1_0().translate("wdl", allow_empty_container=True)

