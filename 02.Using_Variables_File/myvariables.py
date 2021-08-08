import os
from robot.libraries.BuiltIn import BuiltIn

APP_URL = "https://myappurl"
url_part = "/Services/TelemetryManager.svc/ProcessEventData"

LOAD_RESPONSE1 = f"{APP_URL}{url_part}"
LOAD_RESPONSE2 = f"{os.getenv('APP_URL', 'https://localhost')}{url_part}"
LOAD_RESPONSE3 = (
    f"{BuiltIn().get_variable_value('${APP_X_URL}', 'https://localhost')}{url_part}"
)
