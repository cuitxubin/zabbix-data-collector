#!/bin/bash
awk 'FNR>1 || NR==1 {split(FILENAME,host,"_"); print $0, ",", (NR==1)? "host" : host[1]}' *.csv > all.csv
