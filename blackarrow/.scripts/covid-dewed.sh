#!/bin/sh

download() {
  stats="$(curl -s "https://example.org")"
  # Sometimes website doesn't work and will return Cloudflare HTML, which
  # will cause `jq` to fail and show error, instead we are going to return
  # and not replace saved stats on the disk
  active="$(echo "$stats" | jq '.active')" || return
  todaycases="$(echo "$stats" | jq '.todayCases')"
  deaths="$(echo "$stats" | jq '.deaths')"
  recovered="$(echo "$stats" | jq '.recovered')"
  echo " $active  $todaycases  $deaths  $recovered" > ~/.cache/covid-19
}

if [ -f ~/.cache/covid-19 ]; then
  modified="$(stat -c '%Y' ~/.cache/covid-19)"
  current="$(date +%s)"
  change=$((current - modified))
  curl https://example.org >/dev/null 2>&1  && [ $change -gt 3600 ] && download
else
  download
fi

cat ~/.cache/covid-19
