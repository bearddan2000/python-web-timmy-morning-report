from neo4j import DbModel

class Groupby():
    
    def __init__(self) -> None:
        self.n = DbModel()

    def week_groupby(self, week, attr_name):
        cipher: list = []
        cipher.append("MATCH(r:Report)")
        cipher.append(f"WHERE r.id = 'report_{week}'")
        cipher.append("MATCH(d:Day)-[:FROM_REPORT]->(r:Report)")
        cipher.append("MATCH(d:Day)-[:TO_NOTES]->(n:Notes)")
        cipher.append(f"WHERE n.id =~ '{attr_name}-notes.*'")
        cipher.append("WITH COUNT(n) AS ct,")
        cipher.append("n.val AS v")
        cipher.append("RETURN ct, v")
        cipher.append("ORDER BY ct")
        return self.n.decorate_result(" ".join(cipher))

    def weekday_groupby(self, weekday, attr_name):
        cipher: list = []
        cipher.append("MATCH(d:Day)")
        cipher.append(f"WHERE d.weekday = '{weekday}'")
        cipher.append("MATCH(d:Day)-[:TO_NOTES]->(n:Notes)")
        cipher.append(f"WHERE n.id =~ '{attr_name}-notes.*'")
        cipher.append("WITH COUNT(n) AS ct,")
        cipher.append("n.val AS v")
        cipher.append("RETURN ct, v")
        cipher.append("ORDER BY ct")
        return self.n.decorate_result(" ".join(cipher))

    def month_groupby(self, month, attr_name):
        cipher: list = []
        cipher.append("MATCH(d:Day)")
        cipher.append(f"WHERE d.month = '{month}'")
        cipher.append("MATCH(d:Day)-[:TO_NOTES]->(n:Notes)")
        cipher.append(f"WHERE n.id =~ '{attr_name}-notes.*'")
        cipher.append("WITH COUNT(n) AS ct,")
        cipher.append("n.val AS v")
        cipher.append("RETURN ct, v")
        cipher.append("ORDER BY ct")
        return self.n.decorate_result(" ".join(cipher))

    def month_weekday_groupby(self, month, weekday, attr_name):
        cipher: list = []
        cipher.append("MATCH(d:Day)")
        cipher.append(f"WHERE d.month = '{month}'")
        cipher.append(f"AND d.weekday = '{weekday}'")
        cipher.append("MATCH(d:Day)-[:TO_NOTES]->(n:Notes)")
        cipher.append(f"WHERE n.id =~ '{attr_name}-notes.*'")
        cipher.append("WITH COUNT(n) AS ct,")
        cipher.append("n.val AS v")
        cipher.append("RETURN ct, v")
        cipher.append("ORDER BY ct")
        return self.n.decorate_result(" ".join(cipher))

    def quarter_groupby(self, quarter, attr_name):
        cipher: list = []
        cipher.append("MATCH(d:Day)")
        cipher.append(f"WHERE d.quarter = '{quarter}'")
        cipher.append("MATCH(d:Day)-[:TO_NOTES]->(n:Notes)")
        cipher.append(f"WHERE n.id =~ '{attr_name}-notes.*'")
        cipher.append("WITH COUNT(n) AS ct,")
        cipher.append("n.val AS v")
        cipher.append("RETURN ct, v")
        cipher.append("ORDER BY ct")
        return self.n.decorate_result(" ".join(cipher))

    def quarter_weekday_groupby(self, quarter, weekday, attr_name):
        cipher: list = []
        cipher.append("MATCH(d:Day)")
        cipher.append(f"WHERE d.quarter = '{quarter}'")
        cipher.append(f"AND d.weekday = '{weekday}'")
        cipher.append("MATCH(d:Day)-[:TO_NOTES]->(n:Notes)")
        cipher.append(f"WHERE n.id =~ '{attr_name}-notes.*'")
        cipher.append("WITH COUNT(n) AS ct,")
        cipher.append("n.val AS v")
        cipher.append("RETURN ct, v")
        cipher.append("ORDER BY ct")
        return self.n.decorate_result(" ".join(cipher))

    def ytd_groupby(self, attr_name):
        cipher: list = []
        cipher.append("MATCH(d:Day)-[:TO_NOTES]->(n:Notes)")
        cipher.append(f"WHERE n.id =~ '{attr_name}-notes.*'")
        cipher.append("WITH COUNT(n) AS ct,")
        cipher.append("n.val AS v")
        cipher.append("RETURN ct, v")
        cipher.append("ORDER BY ct")
        return self.n.decorate_result(" ".join(cipher))