#!/usr/bin/env sh

case "$(printf " Poland \n New Zealand \n China \n Italy \n USA \n World " | dmenu -h 33 -i -p '  Place  ')" in
	" Poland ")
		place=" Poland "      location="https://corona.lmao.ninja/v2/countries/Poland";;

	" New Zealand ")
		place=" New Zealand " location="https://corona.lmao.ninja/v2/countries/New%20Zealand";;

	" China ")
		place=" China "       location="https://corona.lmao.ninja/v2/countries/China";;

	" Italy ")
		place=" Italy "       location="https://corona.lmao.ninja/v2/countries/Italy";;

	" USA ")
		place=" USA "         location="https://corona.lmao.ninja/v2/countries/USA";;

	" World ")
		place=" World "       location="https://corona.lmao.ninja/v2/all";;

	*)  exit 0
esac

     stats="$(curl -s "$location")"
    active="$(echo "$stats" | jq '.active')"
todaycases="$(echo "$stats" | jq '.todayCases')"
    deaths="$(echo "$stats" | jq '.deaths')"
 recovered="$(echo "$stats" | jq '.recovered')"
     tests="$(echo "$stats" | jq '.tests')"

case "$(printf "  close\n  More info\n  return\n \n  $active \n  $todaycases \n  $deaths \n  $recovered \n  %s$tests" | dmenu -h 33 -i -p "$place")" in
	"  More info")
		stats="$(curl -s $location)"
		cases="$(echo "$stats" | jq '.cases')"
		active="$(echo "$stats" | jq '.active')"
		todaycases="$(echo "$stats" | jq '.todayCases')"
		recovered="$(echo "$stats" | jq '.recovered')"
		critical="$(echo "$stats" | jq '.critical')"
		deaths="$(echo "$stats" | jq '.deaths')"
		todaydeaths="$(echo "$stats" | jq '.todayDeaths')"
		tests="$(echo "$stats" | jq '.tests')"
		testsperonemillion="$(echo "$stats" | jq '.testsPerOneMillion')"
		casesperonemillion="$(echo "$stats" | jq '.casesPerOneMillion')"
		deathsperonemillion="$(echo "$stats" | jq '.deathsPerOneMillion')"
		percentageofdeath="$(echo " $deathsperonemillion $casesperonemillion" | awk '{print ($1 / $2 * 100)}' | cut -c -4)"

		lastupdate="$(echo "$stats" | jq '.updated')"
		time="$(echo "$lastupdate" | cut -b -10)"
		time2="$(date -d @"$time")"
		affectedcountries="$(curl -s https://corona.lmao.ninja/v2/all | jq '.affectedCountries')"

		cas=" Cases: $cases"
		act=" Active: $active"
		tca=" Today cases: $todaycases"
		rec=" Recovered: $recovered"
		cri=" Critical: $critical"
		dea=" Deaths: $deaths"
		tde=" Today deaths: $todaydeaths"
		tes=" Tests: $tests"

		tpm=" T/M: $testsperonemillion"
		cpm=" C/M: $casesperonemillion"
		dpm=" D/M: $deathsperonemillion"
		pod=" PoD: $percentageofdeath%%"
		tim=" $time2"
		acs=" Affected countries: $affectedcountries"

		case "$(printf "  close\n  return\n \n $cas \n $act \n $tca \n $rec \n $cri \n $dea \n $tde \n $tes \n $tpm \n $cpm \n $dpm \n $pod \n \n $tim \n %s$acs" | dmenu -h 33 -l 18 -i -p "$place")" in
			"  return") bash /home/adrian/.scripts/covid-19.sh & exit 0;;
			*)           exit 0
		esac;;

	"  return") bash /home/adrian/.scripts/covid-19.sh & exit 0;;
	*)  exit 0
esac

#    _  _   ____  _                 _   _   _   _
#  _| || |_/ ___|| |_ __ _ _   _   / \ | |_| | | | ___  _ __ ___   ___
# |_  ..  _\___ \| __/ _` | | | | / _ \| __| |_| |/ _ \| '_ ` _ \ / _ \
# |_      _|___) | || (_| | |_| |/ ___ \ |_|  _  | (_) | | | | | |  __/
#   |_||_| |____/ \__\__,_|\__, /_/   \_\__|_| |_|\___/|_| |_| |_|\___|
#                          |___/
