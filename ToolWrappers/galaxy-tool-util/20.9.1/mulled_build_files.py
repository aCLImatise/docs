from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Directory, String

Mulled_Build_Files_V0_1_0 = CommandToolBuilder(tool="mulled_build_files", base_command=["mulled-build-files"], inputs=[ToolInput(tag="in_invo_lucro_path", input_type=File(optional=True), prefix="--involucro-path", doc=InputDocumentation(doc="Path to involucro (if not set will look in working directory and on PATH).")), ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dry-run", doc=InputDocumentation(doc="Just print commands instead of executing them.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Cause process to be verbose.")), ToolInput(tag="in_singularity", input_type=Boolean(optional=True), prefix="--singularity", doc=InputDocumentation(doc="Additionally build a singularity image.")), ToolInput(tag="in_singularity_image_dir", input_type=Directory(optional=True), prefix="--singularity-image-dir", doc=InputDocumentation(doc="Directory to write singularity images too.")), ToolInput(tag="in_namespace", input_type=String(optional=True), prefix="--namespace", doc=InputDocumentation(doc="quay.io namespace.")), ToolInput(tag="in_repository_template", input_type=String(optional=True), prefix="--repository_template", doc=InputDocumentation(doc="Docker repository target for publication (only quay.io or compat. API is currently supported).")), ToolInput(tag="in_channels", input_type=String(optional=True), prefix="--channels", doc=InputDocumentation(doc="Comma separated list of target conda channels.")), ToolInput(tag="in_cond_a_version", input_type=String(optional=True), prefix="--conda-version", doc=InputDocumentation(doc="Change to specified version of Conda before installing packages.")), ToolInput(tag="in_o_auth_token", input_type=String(optional=True), prefix="--oauth-token", doc=InputDocumentation(doc="If set, use this token when communicating with quay.io API.")), ToolInput(tag="in_command", input_type=String(), position=0, doc=InputDocumentation(doc="Command (build-and-test, build, all)")), ToolInput(tag="in_files", input_type=String(), position=1, doc=InputDocumentation(doc="Path to directory (or single file) of TSV files describing composite recipes."))], outputs=[], container="quay.io/biocontainers/galaxy-tool-util:20.9.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mulled_Build_Files_V0_1_0().translate("wdl")

