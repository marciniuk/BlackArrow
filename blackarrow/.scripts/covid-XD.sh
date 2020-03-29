#!/bin/sh

case "$(printf " Poland \n New Zealand \n China \n Italy \n World " | dmenu -h 33 -i -p '  System  ')" in
	" Poland ")      place=" Poland "      location="https://corona.lmao.ninja/countries/Poland";;
	" New Zealand ") place=" New Zealand " location="https://corona.lmao.ninja/countries/New Zealand";;
	" China ")       place=" China "       location="https://corona.lmao.ninja/countries/China";;
	" Italy ")       place=" Italy "       location="https://corona.lmao.ninja/countries/Italy";;

	" World ")       stats="$(curl -s "https://corona.lmao.ninja/all")"
	                active="$(echo "$stats" | jq '.cases')"
	                deaths="$(echo "$stats" | jq '.deaths')"
	             recovered="$(echo "$stats" | jq '.recovered')"
	            lastupdate="$(echo "$stats" | jq '.updated')"
	                  time="$(echo "$lastupdate" | cut -b -10)"
	                 time2="$(date -d @"$time")"

					 printf "  $active \n  $deaths \n  $recovered \n  $time2 " | dmenu -h 33 -i -p ' World '
					 exit 0;;

	*)               exit 0
esac

     stats="$(curl -s "$location")"
    active="$(echo "$stats" | jq '.active')"
todaycases="$(echo "$stats" | jq '.todayCases')"
    deaths="$(echo "$stats" | jq '.deaths')"
 recovered="$(echo "$stats" | jq '.recovered')"

case "$(printf "  $active \n  $todaycases \n  $deaths \n  $recovered \n  More info " | dmenu -h 33 -i -p "$place")" in
	"  More info ") stats="$(curl -s $location)"
	                 cases="$(echo "$stats" | jq '.cases')"
	                active="$(echo "$stats" | jq '.active')"
	            todaycases="$(echo "$stats" | jq '.todayCases')"
	             recovered="$(echo "$stats" | jq '.recovered')"
	              critical="$(echo "$stats" | jq '.critical')"
	                deaths="$(echo "$stats" | jq '.deaths')"
	           todaydeaths="$(echo "$stats" | jq '.todayDeaths')"
	    casesperonemillion="$(echo "$stats" | jq '.casesPerOneMillion')"
	   deathsperonemillion="$(echo "$stats" | jq '.deathsPerOneMillion')"

					 printf " Cases: $cases \n Active: $active \n Today cases: $todaycases \n Recovered: $recovered \n Critical: $critical \n Deaths: $deaths \n Today deaths: $todaydeaths \n C/M: $casesperonemillion \n D/M: $deathsperonemillion " | dmenu -h 33 -i -p "$place";;
	*)               exit 0
esac

