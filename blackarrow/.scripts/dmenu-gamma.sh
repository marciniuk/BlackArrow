#!/usr/bin/env sh

value=" 1.000 \n 1.100 \n 1.150 \n 1.175 "

case "$(printf " Standard \n All \n Red \n Green \n Blue \n Manually " | dmenu -h 33 -i -p ' Gamma ')" in
   " Standard ") xgamma -rgamma 1.15 -ggamma 1.15 -bgamma 1.175;;
        " All ") xgamma -gamma  "$(printf "$value%s" | dmenu -h 33 -i -p ' All   ')" ;;
        " Red ") xgamma -rgamma "$(printf "$value%s" | dmenu -h 33 -i -p ' Red   ')" ;;
      " Green ") xgamma -ggamma "$(printf "$value%s" | dmenu -h 33 -i -p ' Green ')" ;;
       " Blue ") xgamma -bgamma "$(printf "$value%s" | dmenu -h 33 -i -p ' Blue  ')" ;;
   " Manually ")
     xgamma -rgamma "$(printf "$value%s" | dmenu -h 33 -i -p ' Red   ')"
     xgamma -ggamma "$(printf "$value%s" | dmenu -h 33 -i -p ' Green ')"
     xgamma -bgamma "$(printf "$value%s" | dmenu -h 33 -i -p ' Blue  ')"
   ;;
   *) exit 0 ;;
esac
