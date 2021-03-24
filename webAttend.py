from flask import Flask
import mysql.connector


app = Flask(__name__)

mydb = mysql.connector.connect(
    host ="localhost",
    user = "root",
    passwd = "password",
    database = "attendance",
)

mycursor = mydb.cursor()

@app.route("/")
def home():
    
    myTable = '''
<!DOCTYPE html>
<html>
<body>
<h1>List of Students</h1>
<table style="width:1" border="2">
    <tr>
        <th>RFID</th>
        <th>Name</th>
        <th>Time</th>
    </tr>
'''
    
    mycursor.execute("select RFID, Name, Time from students order by Time desc limit 5;")
    
    fetchResult = mycursor.fetchall()
    for row in fetchResult:
        myTable = myTable + '''
    <tr>
        <td>{}</td>
        <td>{}</td>
        <td>{}</td>
    </tr>
'''.format(row[0],row[1],row[2])
        print(row)
        
    myTable = myTable + '''
</body>
</html>
'''
    
    return myTable


if __name__ == "__main__":
    app.run()


