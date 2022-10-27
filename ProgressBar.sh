#!/bin/bash
Green="\e[32m"
Red="\033[31m"
Viollet="\033[35m"
Yellow="\033[33m"
Blue="\033[34m"
LightBlue="\033[36m"
Gray="\033[37m"

function ProgressBar {
# Process data
    let _progress=(${1}*100/${2}*100)/100 # Общий прогресс 
    let _done=(${_progress}*4)/10 # Расчёт границ для наращивания ползунка "▇"
    let _left=40-$_done # Расчёт границы "от" и "до" для черточек .. "---"
      
# Build progressbar string lengths
    _fill=$(printf "%${_done}s") 
    _empty=$(printf "%${_left}s")
	
# 1.2 Build progressbar strings and print the ProgressBar line
# 1.2.1 Output example:                           
# 1.2.1.1 Progress : [▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇] 100%
     printf "$Gray\rProgress : [${_fill// /$LightBlue▇}${_empty// /-}] ${_progress}%%"
}

# Variables
#_start=1

# This accounts as the "totalState" variable for the ProgressBar function
 

# Proof of concept

function Run($start, $end)
{
  printf "$LightBlue\rEntry range: $1 to $2"
  printf "\n"
  for number in $(seq $1 $2)
  do
     sleep 0.1
     ProgressBar ${number} $2
  done
  echo 
}

