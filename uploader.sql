PROCEDURE BLOB_UPLOADER_ALMERIA (pz_key varchar2,
                           pb_blob blob)
          IS
       l_request_url       VARCHAR2 (200) := 'https://api-gw-alm.almeriaindustries.com/api/api-gw/v1/upload-alm-pub';
       l_almeria_instance  varchar2 (200) := 's3instance';
       
       l_response          CLOB;
       l_multipart_parts   apex_web_service.t_multipart_parts;
       vc_token            varchar2 (2000) := 'secretKey';
   BEGIN
       -- Set request headers
       begin
          apex_web_service.clear_request_headers;
      end;   
      --           
       begin
          apex_web_service.set_request_headers(
               p_name_01        => 'accept',
               p_value_01       => 'application/json',
               p_name_02        => 'Content-Type',
               p_value_02       => 'multipart/form-data',
               p_reset          => false,
               p_skip_if_exists => true );
       end;
       -- Append to multipart
       apex_web_service.append_to_multipart(l_multipart_parts, 'Authorization', null, null, vc_token);
       apex_web_service.append_to_multipart(l_multipart_parts, 'Instance',      null, null, l_almeria_instance);
       apex_web_service.append_to_multipart(l_multipart_parts, 'Name',          null, null, pz_key);
       apex_web_service.append_to_multipart(l_multipart_parts, 'File',          ' ',  ' ', p_body_blob => pb_blob);                                               
       -- Make the REST request
       l_response := apex_web_service.make_rest_request(
           p_url           => l_request_url,
           p_http_method   => 'POST',
           p_body_blob      => apex_web_service.generate_request_body(l_multipart_parts),
           p_wallet_path    =>'file:/home/oracle/wallets/almeria'
       );
       --DBMS_OUTPUT.PUT_LINE (to_char (L_RESPONSE));
       -- Process the response (l_response)
       -- ...

   END;
   