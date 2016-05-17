#!/bin/bash -e

FIRSTLONGPART="https://download.microsoft.com/download/0/1/8/018E208D-54F8-44CD-AA26-CD7BC9524A8C/PublicIPs_"
INITIALURL="https://www.microsoft.com/EN-US/DOWNLOAD/confirmation.aspx?id=41653"
OUT="$(curl -k -s $INITIALURL | grep -o -P '(?<='$FIRSTLONGPART').*(?=.xml")'|tail -1)"
A=/tmp/microsoft$$; ( wget -q $FIRSTLONGPART$OUT".xml" -O $A.d && mv $A.d microsoft.xml ) || rm $A.d
