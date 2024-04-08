DECLARE
    photo_key VARCHAR2(100) := 'photo.jpg';
    photo_blob BLOB;
BEGIN
    SELECT photo_data INTO photo_blob FROM photos WHERE photo_name = photo_key;

    UPLOAD_BLOB_ALMERIA(photo_key, photo_blob);
END;