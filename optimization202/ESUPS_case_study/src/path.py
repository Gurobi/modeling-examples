from pathlib import Path

WORKSPACE_DIR = Path(__file__).parent.parent.resolve()
DATA_DIR = WORKSPACE_DIR / "data"
TEST_DATA_DIR = WORKSPACE_DIR / "data" / "test_data"
DASHBOARD_OUTPUT_PATH = WORKSPACE_DIR / "dashboard_output"

