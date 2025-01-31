from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int, Boolean, String

Megalodon_Extras_Merge_Modified_Bases_V0_1_0 = CommandToolBuilder(tool="megalodon_extras_merge_modified_bases", base_command=["megalodon_extras", "merge", "modified_bases"], inputs=[ToolInput(tag="in_output_megalodon_results_dir", input_type=Directory(optional=True), prefix="--output-megalodon-results-dir", doc=InputDocumentation(doc="Output directory. Cannot exist before this command.\nDefault: megalodon_merge_mods_results")), ToolInput(tag="in_data_batch_size", input_type=Int(optional=True), prefix="--data-batch-size", doc=InputDocumentation(doc="Batch size to insert position and statistics data.\nDefault: 100000")), ToolInput(tag="in_max_processes", input_type=Int(optional=True), prefix="--max-processes", doc=InputDocumentation(doc="Maximum number of processes to open for reading\nstatistics. Each process must load all output database\nin memory indices, and thus may incur high memory\nusage. Default: 4")), ToolInput(tag="in_single_process", input_type=Boolean(optional=True), prefix="--single-process", doc=InputDocumentation(doc="Do not use multiprocessing with one input database per")), ToolInput(tag="in_overwrite", input_type=Directory(optional=True), prefix="--overwrite", doc=InputDocumentation(doc="Overwrite output directory if it exists.")), ToolInput(tag="in_process_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--database-safety DATABASE_SAFETY"))], outputs=[ToolOutput(tag="out_output_megalodon_results_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_megalodon_results_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory. Cannot exist before this command.\nDefault: megalodon_merge_mods_results")), ToolOutput(tag="out_overwrite", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_overwrite", type_hint=File()), doc=OutputDocumentation(doc="Overwrite output directory if it exists."))], container="quay.io/biocontainers/megalodon:2.2.10--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Megalodon_Extras_Merge_Modified_Bases_V0_1_0().translate("wdl")

