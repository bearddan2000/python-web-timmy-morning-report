from dateutil import rrule
from datetime import datetime

def create_time_series():
    start = datetime.strptime("1/22/24", "%m/%d/%y")
    return list(
        rrule.rrule(
            rrule.DAILY,
            count=365,
            dtstart=start,
            byweekday=[0,1,2,3,4]
        )
    )