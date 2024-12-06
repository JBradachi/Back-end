import requests
import time
import psycopg2

host = "postgres"
database = "mydb"
user = "user"
password = "pass"

try:
    conn = psycopg2.connect(host=host, database=database, user=user, password=password)
    cursor = conn.cursor()
    cursor.execute('create table bitcoin_variations (data varchar(100), valor float)')
    print("Conexão feita com sucesso")
    while True:
        data = requests.get('http://cointradermonitor.com/api/pbb/v1/ticker').json()
        cursor.execute("INSERT INTO bitcoin_variations (data, valor) VALUES (%s, %s);", (data['time'], data['last']))
        print(f"Last time {data['time']}, value {data['last']} \n")
        time.sleep(2)
except Exception as e:
    print("Falha na conexão do banco de dados")
    conn.close()


