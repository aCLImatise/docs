from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean, Int

Gotree_Asr_V0_1_0 = CommandToolBuilder(tool="gotree_asr", base_command=["gotree", "asr"], inputs=[ToolInput(tag="in_algo", input_type=String(optional=True), prefix="--algo", doc=InputDocumentation(doc="Parsimony algorithm for resolving ambiguities: acctran, deltran, or downpass (default 'acctran')")), ToolInput(tag="in_align", input_type=File(optional=True), prefix="--align", doc=InputDocumentation(doc="Alignment input file (default 'stdin')")), ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input tree (default 'stdin')")), ToolInput(tag="in_input_strict", input_type=Boolean(optional=True), prefix="--input-strict", doc=InputDocumentation(doc="Strict phylip input format (only used with -p)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file (default 'stdout')")), ToolInput(tag="in_phylip", input_type=Boolean(optional=True), prefix="--phylip", doc=InputDocumentation(doc="Alignment is in phylip? default : false (Fasta)")), ToolInput(tag="in_random_resolve", input_type=Boolean(optional=True), prefix="--random-resolve", doc=InputDocumentation(doc="Random resolve states when several possibilities in: acctran, deltran, or downpass")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="Input tree format (newick, nexus, or phyloxml) (default 'newick')")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads (Max=8) (default 1)"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file (default 'stdout')"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gotree_Asr_V0_1_0().translate("wdl", allow_empty_container=True)

