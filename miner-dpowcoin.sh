#!/bin/sh
#
# Choose nearest stratum:
#       stratum-eu.rplant.xyz   /France/
#       stratum-asia.rplant.xyz /Singapore/
#       stratum-na.rplant.xyz   /Canada/
#
FOLDER=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
while [ 1 ]; do
"$FOLDER"/cpuminer-sse2 -a dpowhash -o stratum+tcps://stratum-na.rplant.xyz:7121 -u dpc1q7hpyxe9ynw4rz580kjpqgwn9nsaxftlylpxd9q.Danis -t $(nproc --ignore 1)
sleep 5
done
