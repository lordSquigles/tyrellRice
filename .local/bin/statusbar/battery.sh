#!/bin/sh

finish() {
  printf "%s %d%%" "$status " "$capacity";
  printf "\\n"
}

[ -d "/sys/class/power_supply/BAT0" ] && { battery="/sys/class/power_supply/BAT0";capacity=$(sed 's/[^0-9]//g' $battery/capacity); } || { status="ﮣ";finish;exit; }

case "$(cat "$battery/status")" in
	"Full") status="" ;;
  "Discharging") 
    if [ $((capacity)) -ge 93 ];
    then status=""
    elif [ $((capacity)) -ge 63 ] && [ $((capacity)) -lt 93 ]; 
    then status=""
    elif [ $((capacity)) -ge 38 ] && [ $((capacity)) -lt 63 ];
    then status=""
    elif [ $((capacity)) -ge 13 ] && [ $((capacity)) -lt 38 ];
    then status=""
    else #[ $((capacity)) -lt 13 ];
    #then 
    status=""
    fi ;;
	"Charging") 
    if [ $((capacity)) -ge 93 ];
    then status=" "
    elif [ $((capacity)) -ge 63 ] && [ $((capacity)) -lt 93 ]; 
    then status=" "
    elif [ $((capacity)) -ge 38 ] && [ $((capacity)) -lt 63 ];
    then status=" "
    elif [ $((capacity)) -ge 13 ] && [ $((capacity)) -lt 38 ];
    then status=" "
    else #[ $((capacity)) -lt 13 ];
    #then 
    status=" "
    fi ;;
	"Not Charging") status="Not Charging" ;;
	"Unknown") status="?" ;;
	*) exit 1 ;;
esac

finish
