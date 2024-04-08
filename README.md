# Oracle BLOB uploader to AWS S3

Simple Pl/Sql function capable of uploading BLOBS stored in Oracle database to AWS S3 buckets via API calls.

# Requirements

- Subscription to Almeria Industries API Uploader Gateway: https://almeriaindustries.com/#apigw
- AWS S3 bucket

# Flow

## Connect to Oracle Database:

 Use a database client tool like SQL*Plus, SQL Developer, or any other preferred tool to connect to your Oracle Database instance.

## Create a PL/SQL Function: 

Write the PL/SQL function that encapsulates the logic for uploading BLOBs to the API endpoint. 

This function should handle tasks such as preparing the BLOB data, constructing the HTTP request payload, sending the request, handling responses, and performing error handling and logging.

## Compile the Function: 

Once the PL/SQL function is written, compile it within the database to validate its syntax and semantics. This ensures that the function is ready for execution.

## Grant Necessary Privileges: 

Ensure that the user executing the PL/SQL function has the necessary privileges to interact with BLOB data and make HTTP requests. Grant privileges such as EXECUTE on the function and any additional privileges required for accessing BLOB data or making network requests.

## Test the Function: 

Before deploying the function into a production environment, thoroughly test it to ensure that it behaves as expected. Test various scenarios, including successful uploads, error conditions, and edge cases, to validate the function's robustness and reliability.

## Deploy the Function: 

Once the function has been tested successfully, deploy it into the appropriate schema or database environment where it will be used. This may involve executing a SQL script to create the function or using a database administration tool to deploy the function directly.

