#!/bin/sh

case "$(printf " Poland \n New Zealand \n China \n Italy \n World " | dmenu -h 33 -i -p '  System  ')" in
	" Poland ")
		place=" Poland "      location="https://corona.lmao.ninja/countries/Poland";;

	" New Zealand ")
		place=" New Zealand " location="https://corona.lmao.ninja/countries/New Zealand";;

	" China ")
		place=" China "       location="https://corona.lmao.ninja/countries/China";;

	" Italy ")
		place=" Italy "       location="https://corona.lmao.ninja/countries/Italy";;

	" World ")
		stats="$(curl -s "https://corona.lmao.ninja/all")"
		active="$(echo "$stats" | jq '.cases')"
		deaths="$(echo "$stats" | jq '.deaths')"
		recovered="$(echo "$stats" | jq '.recovered')"
		lastupdate="$(echo "$stats" | jq '.updated')"
		time="$(echo "$lastupdate" | cut -b -10)"
		time2="$(date -d @"$time")"

		printf "  $active %s\n  $deaths %s\n  $recovered %s\n  $time2 " | dmenu -h 33 -i -p ' World '
		exit 0;;

	*)  exit 0
esac

     stats="$(curl -s "$location")"
    active="$(echo "$stats" | jq '.active')"
todaycases="$(echo "$stats" | jq '.todayCases')"
    deaths="$(echo "$stats" | jq '.deaths')"
 recovered="$(echo "$stats" | jq '.recovered')"

case "$(printf "  $active %s\n  $todaycases %s\n  $deaths %s\n  $recovered %s\n  More info " | dmenu -h 33 -i -p "$place")" in
	"  More info ")
		stats="$(curl -s $location)"
		cases="$(echo "$stats" | jq '.cases')"
		active="$(echo "$stats" | jq '.active')"
		todaycases="$(echo "$stats" | jq '.todayCases')"
		recovered="$(echo "$stats" | jq '.recovered')"
		critical="$(echo "$stats" | jq '.critical')"
		deaths="$(echo "$stats" | jq '.deaths')"
		todaydeaths="$(echo "$stats" | jq '.todayDeaths')"
		casesperonemillion="$(echo "$stats" | jq '.casesPerOneMillion')"
		deathsperonemillion="$(echo "$stats" | jq '.deathsPerOneMillion')"

		stats2="$(curl -s "https://corona.lmao.ninja/all")"
		lastupdate="$(echo "$stats2" | jq '.updated')"
		time="$(echo "$lastupdate" | cut -b -10)"
		time2="$(date -d @"$time")"

		printf " Cases: $cases %s\n Active: $active %s\n Today cases: $todaycases %s\n Recovered: $recovered %s\n Critical: $critical %s\n Deaths: $deaths %s\n Today deaths: $todaydeaths %s\n C/M: $casesperonemillion %s\n D/M: $deathsperonemillion %s\n $time2" | dmenu -h 33 -i -p "$place";;
	*)  exit 0
esac

