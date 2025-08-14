import mysql.connector

class DataLoder:
    def lode_data():
        conn = mysql.connector.connect(
            host = "mysql",
            user = "shlomo",
            password = "1234",
            database = "namse",
        )
        cursor = conn.cursor()
        cursor.execute('SELECT * FROM namse')
        products = cursor.fetchall()
        cursor.close()
        conn.close()
        return products

