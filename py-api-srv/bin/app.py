import os
from flask import Flask, request
from flask_sqlalchemy import SQLAlchemy
from flask_cors import CORS

import routes.groupby.methods
from neo4j import DbModel

from stats.basic import fetch_stats
from graph.basic import fetch_graphs
# Mysql
username = os.environ['MYSQL_USER']
password = os.environ['MYSQL_PASSWORD']

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = f"mariadb+pymysql://{username}:{password}@db/timmy"
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

CORS(app)
#class WeekModel(db.Model):
#    __tablename__ = "week_view"

#    id = db.Column(db.Integer, primary_key=True)
#    a = db.Column(db.String())
#    de = db.Column(db.String())

#    def __init__(self,a,b):
#        self.a = a
#        self.de = b

#class ProjectModel(db.Model):
#    __tablename__ = 'project_view'
#
#    id = db.Column(db.Integer)
#    catagory = db.Column(db.String())
#    quarter_id = db.Column(db.Integer)
#    month_id = db.Column(db.Integer)
#    weekday_id = db.Column(db.Integer)
#    val = db.Column(db.Integer)
#
#    def __init__(self, id, catagory, quarter_id, month_id, weekday_id, val):
#        self.id = id
#        self.catagory = catagory
#        self.quarter_id = quarter_id
#        self.month_id = month_id
#        self.weekday_id = weekday_id
#        self.val = val

@app.get('/')
def get_all():
    lst = [
        'current', 
        'historical'
    ]
    fetch_stats(lst)
    fetch_graphs(lst)
    return {"count": len(lst), "links": lst}

app.register_blueprint(routes.groupby.methods.route_api())

@app.get('/neo4j/report/<report_id>/notes')
def get_neo4j_report_notes(report_id):
    n = DbModel()
    return n.report_notes(report_id)

#@app.get('/week')
#def get_week():
#    weeks = WeekModel.query.all()
#    lst = [
#    {
#        "to": week.a,
#        "from": week.de
#    } for week in weeks]
#
#    return {"count": len(lst), "weeks": lst}

if __name__ == "__main__":
    app.run(host ='0.0.0.0', port = 5000, debug = True)