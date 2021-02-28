#!/usr/bin/env sh

wifi=$(ifstat -j wlp3s0 | cut -c 21- | rev | cut -c 3- | rev | jq .rx_bytes)
eth=$(ifstat -j enp0s25 | cut -c 22- | rev | cut -c 3- | rev | jq .rx_bytes)
gb=$(echo "scale=2; ($wifi+$eth)/1024/1024/1024" | bc -l)
mb=$(echo "scale=0; ($wifi+$eth)/1024/1024" | bc -l)

case "$(printf "$gb%s" | wc -m)" in
  3) echo "$mb"MB;;
  *) echo "$gb"GB;;
esac
