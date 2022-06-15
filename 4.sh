#!/bin/bash

sed -E -e ' s/[0-9]/**!!CEN-SU-RA-D0!!**/ ' -e ' s/[0-9]//g ' < ips.txt
