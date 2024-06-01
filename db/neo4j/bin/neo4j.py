from py2neo import Graph, Node, Relationship
import os, json, logging

from time_series import create_time_series

logging.basicConfig(level=logging.INFO)

# match id
# MATCH (n) WHERE n.id =~ 'report.*' RETURN n
# count relationship
# MATCH (n:`bedtime-notes`)-[:FROM_REPORT]->(c:Report) RETURN COUNT(n)
# group by count
# MATCH (n:`bedtime-notes`)-[:FROM_REPORT]->(c:Report) RETURN COUNT(n), n.val ORDER BY COUNT(n)

class SeedNeo4j:
    def __init__(self, data):
        self.time_series = create_time_series()    
        self.graph=self.connect()
        self.clean_db()
        bus_lst = self.create_entity_node('bus', data)
        hygien_lst = self.create_entity_node('hygien', data)
        bedtime_lst = self.create_entity_node('bedtime', data)
        sleep_lst = self.create_entity_node('sleep', data)
        eat_lst = self.create_entity_node('eat', data)
        morning_lst = self.create_entity_node('morning', data)
        other_lst = self.create_entity_node(None, data)
        
        report_lst = data['projects']
        day_counter = 0
        for report_id in range(len(report_lst)):
            report_node = Node(f"Report", id=str(f'report_{report_id}'))
            self.graph.create(report_node)
            for day in report_lst[report_id]['reports']:
                dt, quarter, month, weekday = self.create_day_attributes(day_counter)
                day_node = Node(f"Day", id=str(day['id']), date=str(dt), quarter=str(quarter), month=str(month), weekday=str(weekday))
                self.graph.create(day_node)
                self.create_relation( report_id, report_node, day_node, day, bus_lst, 'bus')
                self.create_relation( report_id, report_node, day_node, day, hygien_lst, 'hygien')
                self.create_relation( report_id, report_node, day_node, day, bedtime_lst, 'bedtime')
                self.create_relation( report_id, report_node, day_node, day, sleep_lst, 'sleep')
                self.create_relation( report_id, report_node, day_node, day, eat_lst, 'eat')
                self.create_relation( report_id, report_node, day_node, day, morning_lst, 'morning')
                self.create_relation( report_id, report_node, day_node, day, other_lst, 'notes')
                day_counter = day_counter + 1
    
    def create_day_attributes(self, day_counter):
        date = self.time_series[day_counter]
        
        quarter = 4
        
        if day_counter <= 45:
            quarter = 3

        month = int(date.strftime("%m"))
        weekday = int(date.strftime("%w"))
        return self.time_series[day_counter].strftime('%m/%d'), quarter, month, weekday


    def connect(self) -> Graph:
        url = 'bolt://db-neo4j:7687'
        username = os.environ['NEO4J_AUTH'].split('/')[0]
        password = os.environ['NEO4J_AUTH'].split('/')[1]

        return Graph(url + '/neo4j/', auth=(username, password))

    def clean_db(self):
        cipher = "MATCH(n:Report) DETACH DELETE n"
        self.graph.run(cipher)
        cipher = "MATCH(n:Day) DETACH DELETE n"
        self.graph.run(cipher)
        cipher = "MATCH(n:Notes) DETACH DELETE n"
        self.graph.run(cipher)

    def connect_relationship(self, report, day, note, report_id, entity):
        try:
            note_edge = Relationship(day, f'TO_NOTES', note)
            report_edge = Relationship(day, f'FROM_REPORT', report)
            self.graph.create(note_edge)
            self.graph.create(report_edge)
        except:
            pass

    def create_relation(self, report_id, report_node, day_node, day, lst, entity):
        if "notes" not in entity:
            for item in day[entity]['notes']:
                self.connect_relationship(report_node, day_node, lst[item], report_id, entity)
        elif "notes" in entity:
            for item in day[entity]:
                self.connect_relationship(report_node, day_node, lst[item], report_id, entity)

    def create_entity_node(self, entity, data):
        lst = []
        index = 0
        key = 'notes-abbv'
        if entity is not None:
            key = f'{entity}-notes'

        for feature in data[key]:
            feature_note = feature['desc']
            node = Node("Notes", id=str(f'{key}_{index}'), val=feature_note)
            lst.append(node)
            index = index + 1
            self.graph.create(node)
        return lst