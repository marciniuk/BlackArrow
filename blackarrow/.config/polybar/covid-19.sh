#!/bin/sh

download() {
        stats="$(curl -s "https://corona.lmao.ninja/countries/Poland")"
   todaycases="$(echo "$stats" | jq '.todayCases' 2>/dev/null)" || return
  todaydeaths="$(echo "$stats" | jq '.todayDeaths')"

  echo " $todaycases  $todaydeaths" > ~/.cache/covid-19
}

ping -w 1 corona.lmao.ninja >/dev/null 2>&1 && download
cat ~/.cache/covid-19
