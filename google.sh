#!/bin/bash

rm google.txt

_hosts=$(nslookup -q=TXT _cloud-netblocks.googleusercontent.com  8.8.8.8 | grep -o -P "(?<=include:)[^ ]*")

for _host in ${_hosts[@]}; do
  nslookup -q=TXT $_host 8.8.8.8 | grep -o -P "ip(4|6):[a-fA-F0-9:./]*" >> google.txt
done

_hosts=$(nslookup -q=TXT _spf.google.com  8.8.8.8 | grep -o -P "(?<=include:)[^ ]*")

for _host in ${_hosts[@]}; do
  nslookup -q=TXT $_host 8.8.8.8 | grep -o -P "ip(4|6):[a-fA-F0-9:./]*" >> google.txt
done

sort google.txt -o google.txt
