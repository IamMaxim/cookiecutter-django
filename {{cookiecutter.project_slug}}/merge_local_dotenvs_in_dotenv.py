import os
from collections.abc import Sequence
from pathlib import Path

BASE_DIR = Path(__file__).parent.resolve()
PRODUCTION_DOTENVS_DIR = BASE_DIR / ".envs" / ".local"
PRODUCTION_DOTENV_FILES = [
    PRODUCTION_DOTENVS_DIR / ".django",
    PRODUCTION_DOTENVS_DIR / ".postgres",
    PRODUCTION_DOTENVS_DIR / ".external",
]
DOTENV_FILE = BASE_DIR / ".env"


def merge(
    output_file: Path,
    files_to_merge: Sequence[Path],
) -> None:
    merged_content = ""
    for merge_file in files_to_merge:
        merged_content += merge_file.read_text()
        merged_content += os.linesep
    output_file.write_text(merged_content)


if __name__ == "__main__":
    merge(DOTENV_FILE, PRODUCTION_DOTENV_FILES)