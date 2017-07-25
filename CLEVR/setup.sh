#!/bin/sh

# Download and extract CLEVR data if it's not already here
if [ ! -d "CLEVR_v1.0" ]; then
  echo "Downloading CLEVR data."
  curl -O "https://s3-us-west-1.amazonaws.com/clevr/CLEVR_v1.0_no_images.zip"
  unzip "CLEVR_v1.0_no_images.zip"
  rm "CLEVR_v1.0_no_images.zip"
  echo "Setup complete! Run make to build and test the grammar."
else
  echo "CLEVR data already available. You're good to go!"
fi
