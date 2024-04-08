CREATE TABLE photos (
    photo_id NUMBER PRIMARY KEY,
    photo_name VARCHAR2(100),
    photo_data BLOB,
    upload_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);