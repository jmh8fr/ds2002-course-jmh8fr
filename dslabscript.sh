#!/bin/bash


set -x

aws s3 cp "DSlab.png" "s3://ds2002-jmh8fr/DSlab.png"

if [ $? -eq 0 ]; then
echo "Upload successful."

PRESIGNED_URL=$(aws s3 presign "s3://ds2002-jmh8fr/DSlab.png" --expires-in 604800)

echo "Presigned URL (valid for 7 days): $PRESIGNED_URL"
else
echo "Upload failed."
fi

