#!/bin/sh

if [ $# -ne 2 ]; then
	echo "Invalid arguments"
	echo "Usage: sh psu-internet-authen.sh USERNAME PASSWORD"
	exit 1
fi

curl 'https://cp-xml-40g.psu.ac.th/php/action_page.php' -X POST -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:135.0) Gecko/20100101 Firefox/135.0' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8' -H 'Accept-Language: en-US,en;q=0.5' -H 'Accept-Encoding: gzip, deflate, br, zstd' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Origin: https://cp-xml-40g.psu.ac.th' -H 'DNT: 1' -H 'Sec-GPC: 1' -H 'Connection: keep-alive' -H 'Referer: https://cp-xml-40g.psu.ac.th/php/uid.php' -H 'Upgrade-Insecure-Requests: 1' -H 'Sec-Fetch-Dest: document' -H 'Sec-Fetch-Mode: navigate' -H 'Sec-Fetch-Site: same-origin' -H 'Sec-Fetch-User: ?1' -H 'Priority: u=0, i' --data-raw 'username='"$1"'&password='"$2"'&login='
