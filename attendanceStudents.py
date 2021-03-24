import mysql.connector
import RPi.GPIO as GPIO
from mfrc522 import SimpleMFRC522
from RPLCD.i2c import CharLCD
import time

lcd = CharLCD('PCF8574', 0x27)
lcd.clear()
reader = SimpleMFRC522()

mydb = mysql.connector.connect(
    host ="localhost",
    user = "root",
    passwd = "password",
    database = "attendance",
)

mycursor = mydb.cursor()

def createTable():
    sql = "Create table if not exists students(id INT AUTO_INCREMENT PRIMARY KEY, RFID TEXT, Name TEXT, Time datetime)"
    mycursor.execute(sql)
    
createTable()

def insertNew (id, name):
    query = "Insert into students (RFID, Name, Time) VALUES (%s, %s, NOW())"
    
    val = (id, name)
    
    mycursor.execute(query, val)
    
    mydb.commit()
    
    print(mycursor.rowcount, "records inserted")
    time.sleep(1)

try:
    i = 1
    while i > 0:
        lcd.clear()
        ask = 'Place to Read'
        print(ask)
        lcd.write_string(ask)
        id, text = reader.read()
        lcd.clear()
        print(id)
        print(text)
        text = text.strip()
        lcd.write_string(str(id))
        lcd.write_string('\n\r' + text)
        insertNew (id, text)
        lcd.clear()
        wait = 'Please Wait Until Screen Clear'
        print(wait)
        lcd.write_string(wait)
        time.sleep(1)
        
        
finally:
    GPIO.cleanup()
        
