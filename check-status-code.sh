#!/bin/bash
while read LINE; do
  curl -o /dev/null --silent --progress-bar --head --write-out '%{http_code} %{time_starttransfer} %{url_effective}\n' "$LINE" >> output.txt
done < urls.txt
