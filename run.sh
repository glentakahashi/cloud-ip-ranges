#!/bin/bash

./pull-google.sh
./pull-amazon.sh
./pull-microsoft.sh

git add google.txt
git add microsoft.xml
git add amazon.json
git commit -m "Hourly update $(date)"
git push
