from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Variantannotatefrequency_V0_1_0 = CommandToolBuilder(tool="VariantAnnotateFrequency", base_command=["VariantAnnotateFrequency"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input variant list to annotate in VCF or GSvar format.")), ToolInput(tag="in_bam", input_type=File(optional=True), prefix="-bam", doc=InputDocumentation(doc="Input BAM file.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output variant list file name (VCF or GSvar).")), ToolInput(tag="in_depth", input_type=Boolean(optional=True), prefix="-depth", doc=InputDocumentation(doc="Annotate an additional column containing the depth.\nDefault value: 'false'")), ToolInput(tag="in_mapq_zero", input_type=Boolean(optional=True), prefix="-mapq0", doc=InputDocumentation(doc="Annotate an additional column containing the percentage of mapq 0 reads.\nDefault value: 'false'")), ToolInput(tag="in_name", input_type=File(optional=True), prefix="-name", doc=InputDocumentation(doc="Column header prefix in output file.\nDefault value: ''")), ToolInput(tag="in_ref", input_type=File(optional=True), prefix="-ref", doc=InputDocumentation(doc="Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini' file is used.\nDefault value: ''")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output variant list file name (VCF or GSvar).")), ToolOutput(tag="out_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name", type_hint=File()), doc=OutputDocumentation(doc="Column header prefix in output file.\nDefault value: ''"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Variantannotatefrequency_V0_1_0().translate("wdl", allow_empty_container=True)

