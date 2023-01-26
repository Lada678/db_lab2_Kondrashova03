import psycopg2
username = 'postgres'
password = '1234'
database = 'student01_DB'
host = 'localhost'
port = '5432'

query_1 = '''
SELECT a.country_id, c.country_name, SUM(accident_death) as sum_death
FROM accident a
	JOIN country c ON a.country_id = c.country_id
GROUP BY a.country_id, c.country_name

'''
query_2 = '''
SELECT a.description_id, c.description_name, count(a.description_id) as amound
FROM accident a
	JOIN description c ON a.description_id = c.description_id
GROUP BY a.description_id, c.description_name

'''
query_3 = '''
SELECT  EXTRACT( year from accident_date), sum(accident_death) 
as deathrate FROM accident GROUP BY EXTRACT( year from accident_date)
'''


conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)

with conn:
    print("кількість смертей по країнам ")
    cur = conn.cursor()
    cur.execute(query_1)
    for row in cur:
        print(row)
    print("")

with conn:
    print("кількість випадків по кожній з причин")
    cur = conn.cursor()
    cur.execute(query_2)
    for row in cur:
        print(row)
    print("")

with conn:
    print("кількість смертей по рокам")
    cur = conn.cursor()
    cur.execute(query_3)
    for row in cur:
        print(row)
    print("")
