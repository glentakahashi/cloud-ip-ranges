#!/bin/bash

./google.sh
./amazon.sh
./microsoft.sh

git add google.txt
git add microsoft.xml
git add amazon.json
git commit -m "Hourly update $(date)"
git push
