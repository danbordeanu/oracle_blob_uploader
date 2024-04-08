import cx_Oracle

# Connect to the database
connection = cx_Oracle.connect("username", "password", "dsn")

# Open the photo file and read its contents
with open("photo.jpg", "rb") as file:
    photo_data = file.read()

# Insert the photo into the database
cursor = connection.cursor()
cursor.execute("INSERT INTO photos (photo_name, photo_data) VALUES (:name, :data)",
               {"name": "photo.jpg", "data": photo_data})
connection.commit()
cursor.close()
connection.close()
