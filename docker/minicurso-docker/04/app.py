import psycopg2
from flask import Flask 

host = "my-postgres"
database = "mydb"
user = "user"
password = "pass"

app = Flask("__name__")

@app.route('/')
def home():
    try:
        conn = psycopg2.connect(host=host, database=database, user=user, password=password)
        conn.close()
        return "Conexão bem sucedida"
    except Exception as e:
        return "Erro com o banco de dados"
    
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)