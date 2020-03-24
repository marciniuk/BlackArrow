#!/bin/sh

download() {
  stats="$(curl -s "https://corona.lmao.ninja/countries/Poland")"
  active="$(echo "$stats" | jq '.active')"
  todaycases="$(echo "$stats" | jq '.todayCases')"
  deaths="$(echo "$stats" | jq '.deaths')"
  echo " $active  $todaycases  $deaths" > ~/.cache/covid-19
}

if [ -f ~/.cache/covid-19 ]; then
  modified="$(stat -c '%Y' ~/.cache/covid-19)"
  current="$(date +%s)"
  change=$((current - modified))
  [ $change -gt 1800 ] && download
else
  download
fi

cat ~/.cache/covid-19
