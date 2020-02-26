#!/bin/bash
if [ $# -eq 0 ]; then
echo "Usage: $0 <Proxy list>"
exit 1
fi

while read pass; do
curl --proxy $pass --url https://canihazip.com/s
echo ""
done < <(grep "" $1)
exit 0

#Expected output if proxy is working
#<IP of the proxy sever>

#Expected output if proxy is broken
#<Curl errors>


## TODO: make it test multiple servers at once to speed up the process
## make it count how many are down and how many are up