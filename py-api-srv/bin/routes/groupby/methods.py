from flask import Blueprint

from routes.groupby.groupby import Groupby

def route_api():

    PREFIX = '/neo4j/notes'

    neo4j_notes = Blueprint('neo4j_notes', __name__, url_prefix=PREFIX)

    n = Groupby()

    @neo4j_notes.route('week/<week>/<attr>', methods=['GET'])
    def get_note_week(week, attr):
        return n.week_groupby(week, attr)

    @neo4j_notes.route('weekday/<weekday>/<attr>', methods=['GET'])
    def get_note_weekday(weekday, attr):
        return n.weekday_groupby(weekday, attr)

    @neo4j_notes.route('month/<month>/<attr>', methods=['GET'])
    def get_note_month(month, attr):
        return n.month_groupby(month, attr)

    @neo4j_notes.route('month/<month>/<weekday>/<attr>', methods=['GET'])
    def get_note_month_weekday(month, weekday, attr):
        return n.month_weekday_groupby(month, weekday, attr)

    @neo4j_notes.route('quarter/<quarter>/<attr>', methods=['GET'])
    def get_note_quarter(quarter, attr):
        return n.quarter_groupby(quarter, attr)

    @neo4j_notes.route('quarter/<quarter>/<weekday>/<attr>', methods=['GET'])
    def get_note_quarter_weekday(quarter, weekday, attr):
        return n.quarter_weekday_groupby(quarter, weekday, attr)

    @neo4j_notes.route('ytd/<attr>', methods=['GET'])
    def get_note_ytd(attr):
        return n.ytd_groupby(attr)

    return neo4j_notes