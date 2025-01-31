from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Hisat2_Inspect_V0_1_0 = CommandToolBuilder(tool="hisat2_inspect", base_command=["hisat2-inspect"], inputs=[ToolInput(tag="in_large_index", input_type=Boolean(optional=True), prefix="--large-index", doc=InputDocumentation(doc="force inspection of the 'large' index, even if a\n'small' one is present.")), ToolInput(tag="in_across", input_type=Int(optional=True), prefix="--across", doc=InputDocumentation(doc="Number of characters across in FASTA output (default: 60)")), ToolInput(tag="in_summary", input_type=Boolean(optional=True), prefix="--summary", doc=InputDocumentation(doc="Print summary incl. ref names, lengths, index properties")), ToolInput(tag="in_names", input_type=Boolean(optional=True), prefix="--names", doc=InputDocumentation(doc="Print reference sequence names only")), ToolInput(tag="in_snp", input_type=Boolean(optional=True), prefix="--snp", doc=InputDocumentation(doc="Print SNPs")), ToolInput(tag="in_ss", input_type=Boolean(optional=True), prefix="--ss", doc=InputDocumentation(doc="Print splice sites")), ToolInput(tag="in_ss_all", input_type=Boolean(optional=True), prefix="--ss-all", doc=InputDocumentation(doc="Print splice sites including those not in the global index")), ToolInput(tag="in_exon", input_type=Boolean(optional=True), prefix="--exon", doc=InputDocumentation(doc="Print exons")), ToolInput(tag="in_ht_two_ref", input_type=Boolean(optional=True), prefix="--ht2-ref", doc=InputDocumentation(doc="Reconstruct reference from .ht2 (slow, preserves colors)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose output (for debugging)"))], outputs=[], container="quay.io/biocontainers/hisat2:2.2.1--he1b5a44_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hisat2_Inspect_V0_1_0().translate("wdl")

