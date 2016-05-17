#!/bin/bash

FIRSTLONGPART="https://download.microsoft.com/download/0/1/8/018E208D-54F8-44CD-AA26-CD7BC9524A8C/PublicIPs_"
INITIALURL="https://www.microsoft.com/EN-US/DOWNLOAD/confirmation.aspx?id=41653"
OUT="$(curl -k -s $INITIALURL | grep -o -P '(?<='$FIRSTLONGPART').*(?=.xml")'|tail -1)"
wget --no-check-certificate -nv $FIRSTLONGPART$OUT".xml" -O microsoft.xml
