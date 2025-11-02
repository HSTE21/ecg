#!/bin/bash

# The original base URL no longer works, we are using direct links.

mkdir data && cd data

# Download training data
curl -L -o training2017.zip "https://www.physionet.org/files/challenge-2017/1.0.0/training2017.zip?download"
unzip training2017.zip

# Download sample data
curl -L -o sample2017.zip "https://www.physionet.org/files/challenge-2017/1.0.0/sample2017.zip?download"
unzip sample2017.zip

# Download reference file (NOTE: this is called REFERENCE-v3.csv)
curl -L -o REFERENCE-v3.csv "https://www.physionet.org/files/challenge-2017/1.0.0/REFERENCE-v3.csv?download"

cd ..

python build_datasets.py
