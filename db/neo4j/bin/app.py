from neo4j import SeedNeo4j
import os, json, logging
from sqlmodel import create_engine, Session, select, text
from typing import Optional
from sqlmodel import Field, SQLModel

logging.basicConfig(level=logging.INFO)

# Mysql
engine="mariadb+pymysql"
username = os.environ['MYSQL_USER']
password = os.environ['MYSQL_PASSWORD']
host="db"
db_name="feature"

# Return an Engine
engine = create_engine(f'{engine}://{username}:{password}@{host}/{db_name}')

class Entity(SQLModel, table=True):
    id: Optional[int] = Field(default=None, primary_key=True)
    catagory_id: int
    quarter_id: int
    month_id: int
    weekday_id: int
    val: int

    def __init__(self, a, b, c, d, e):
        self.catagory_id = a
        self.quarter_id = b
        self.month_id = c
        self.weekday_id = d
        self.val = e

    def __repr__(self):
        return "<Entity('%d', '%d', '%d', '%d', '%d')>" % (self.catagory_id, self.quarter_id, self.month_id, self.weekday_id, self.val)

def main():
    data = None
    infile = 'data.json'
    with open(infile) as f:
        data = json.load(f)

    ins = []
    wk_counter = 0
    quarter_id = 3
    month_id = 1
    
    for proj in data['projects']:
        weekday_id = 0
        for rep in proj['reports']:
            ins.append(Entity(1, quarter_id, month_id, weekday_id, rep['bus']['id']))
            ins.append(Entity(2, quarter_id, month_id, weekday_id, rep['bedtime']['id']))
            ins.append(Entity(3, quarter_id, month_id, weekday_id, rep['sleep']['id']))
            ins.append(Entity(4, quarter_id, month_id, weekday_id, rep['eat']['id']))
            ins.append(Entity(5, quarter_id, month_id, weekday_id, rep['morning']['id']))
            ins.append(Entity(6, quarter_id, month_id, weekday_id, rep['hygien']['id']))
            weekday_id = weekday_id + 1
        wk_counter = wk_counter + 1
        if wk_counter > 2 and wk_counter < 7:
            month_id = 2
        elif wk_counter > 7 and wk_counter < 11:
            month_id = 3
        elif wk_counter > 11 and wk_counter < 16:
            month_id = 4
            quarter_id = 4
        elif wk_counter > 16:
            month_id = 5
    
    with Session(engine) as session:
        statement = text("TRUNCATE TABLE entity")
        session.exec(statement)
        session.commit()
        
    with Session(engine) as session:
        for i in ins:
            session.add(i)

        session.commit()

    with Session(engine) as session:
        statement = select(Entity)
        entities = session.exec(statement).all()
    
    results = [
        {
            "id": entity.id,
            "catagory_id": entity.catagory_id,
            "quarter_id": entity.quarter_id,
            "month_id": entity.month_id,
            "weekday_id": entity.weekday_id,
            "val": entity.val
        } for entity in entities]

    # for x in results:
    #     print(x)

    SeedNeo4j(data)    
    print('Done')

if __name__ == '__main__':
    # print("fix me")
    main()