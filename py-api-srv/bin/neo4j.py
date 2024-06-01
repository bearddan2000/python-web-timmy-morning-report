from py2neo import Graph, Node, Relationship
import os
import uuid

class DbModel():
    
    def __init__(self) -> None:
        pass

    def connect(self) -> Graph:
        url = 'bolt://db-neo4j:7687'
        username = os.environ['NEO4J_AUTH'].split('/')[0]
        password = os.environ['NEO4J_AUTH'].split('/')[1]

        return Graph(url + '/neo4j/', auth=(username, password))

    def decorate_result(self, cipher) -> dict:
        res = self.connect().run(cipher).data()
        return {'results': res}

    def report_notes(self, report_id):
        cipher: list = []
        cipher.append("MATCH (r:Report) ")
        cipher.append(f"WHERE r.id = 'report_{report_id}'")
        cipher.append("MATCH (d:Day)-[:FROM_REPORT]->(r:Report)")
        cipher.append("MATCH (d:Day)-[:TO_NOTES]->(n:Notes)")
        cipher.append("WITH d.weekday AS weekday, SPLIT(n.id,'-')[0] AS catagory, COLLECT(n.val) AS v")
        cipher.append("RETURN weekday, catagory, v")
        return self.decorate_result(" ".join(cipher))