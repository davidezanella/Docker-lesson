# Product Service

# Import framework
import psycopg2
from flask import Flask
from flask_restful import Resource, Api

# Instantiate the app
app = Flask(__name__)
api = Api(app)

class Product(Resource):
    def __init__(self):
        self.connection = psycopg2.connect(
            database = "postgres_db",
            user = "docker",
            password = "docker",
            host = "database",
            port = "5432"
        )
    def get(self):
        cur=self.connection.cursor()
        cur.execute("SELECT * FROM SaleItems")
        rows= cur.fetchall()
        return {
            'products': rows
        }

# Create routes
api.add_resource(Product, '/')

# Run the application
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80, debug=True)
