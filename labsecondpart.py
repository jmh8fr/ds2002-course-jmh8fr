#!/usr/bin/python3


import urllib.request
import boto3

url = 'https://gratisography.com/wp-content/uploads/2024/01/gratisography-cyber-kitty-800x525.jpg'
file_name = 'cat_image.jpeg'
bucket_name = 'ds2002-jmh8fr'
expires_in = 604800

urllib.request.urlretrieve(url,file_name)

s3 = boto3.client('s3', region_name = 'us-east-1')
with open(file_name, 'rb') as file:
    response1 = s3.put_object(Body=file, Bucket=bucket_name, Key=file_name, ContentType='image/jpeg')

response2 =  s3.generate_presigned_url(
    'get_object',
    Params={'Bucket': bucket_name, 'Key': file_name},
    ExpiresIn = expires_in
    )
print(response2)
 
