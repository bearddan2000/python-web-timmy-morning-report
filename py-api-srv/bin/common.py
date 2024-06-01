ALL = ['current', 'prev', 'week', 'weekday', 'month', 'month-weekday', 'quarter', 'quarter-weekday', 'ytd']

BASIC = ['current', 'prev', 'weekday', 'month', 'quarter', 'ytd']

FEATURES = ['bedtime', 'sleep', 'eat', 'morning']

WEEKDAY = [0,1,2,3,4]

MONTH = [1,2,3,4,5]

QUARTER = [3,4]

WEEKS = 20

def switch_lst(lst: list, base):
    for _type in ALL:
        if "month" in _type:
            if 'weekday' in _type:
                for month in MONTH:
                    for weekday in WEEKDAY:
                        lst.append(f'{base}/month/{month}/weekday/{weekday}')
            else:
                for month in MONTH:
                    lst.append(f'{base}/{_type}/{month}')
        elif "quarter" in _type:
            if 'weekday' in _type:
                for quarter in QUARTER:
                    for weekday in WEEKDAY:
                        lst.append(f'{base}/quarter/{quarter}/weekday/{weekday}')
            else:
                for quarter in QUARTER:
                    lst.append(f'{base}/{_type}/{quarter}')
        elif "weekday" in _type:
            for weekday in WEEKDAY:
                lst.append(f'{base}/{_type}/{weekday}')
        elif "week" in _type:
            for week in range(2, WEEKS):
                lst.append(f'{base}/{_type}/{week}')
        else:
            lst.append(f'{base}/{_type}')

def add_list(lst, service, catagory):
    tmp_lst = []
    switch_lst(tmp_lst, service)
    lst += [ f'{x}/{catagory}' for x in tmp_lst]