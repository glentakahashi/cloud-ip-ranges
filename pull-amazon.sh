#!/bin/bash -e

A=/tmp/amazon$$; ( wget -q "https://ip-ranges.amazonaws.com/ip-ranges.json " -O $A.d && mv $A.d amazon.json ) || rm $A.d
