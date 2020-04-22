!#/bin/bash -x

varBucketName=$1
varProjectName=django_hello_world

echo "
'''Code grabs python hello world django project using presigned-url.'''

import json
import boto3
import os
import logging

LOGGER = logging.getLogger()
LOGGER.setLevel(logging.INFO)

def lambda_handler(event, context):
LOGGER.debug('invoking function')
bucket_name = '$varBucketName'
item_path = '$varProjectName'
s3_client = boto3.client('s3')
resp = s3_client.generate_presigned_url(
                'get_object',
                Params={'Bucket': bucket_name, 'Key': item_path},
                ExpiresIn=1800)
return {
    'statusCode': 302,
    'headers': { 'access_link': resp }
" > get_project.py

chmod +x get_object.py
./get_object.py