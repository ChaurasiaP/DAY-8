#!/bin/bash 


declare -A diceRoll
diceRoll["ones"]=0
diceRoll["twos"]=0
diceRoll["threes"]=0
diceRoll["fours"]=0
diceRoll["fives"]=0
diceRoll["sixes"]=0

while (( ${diceRoll["ones"]}<=10 || ${diceRoll["twos"]}<=10 || ${diceRoll["threes"]}<=10 || ${diceRoll["fours"]}<=10 || ${diceRoll["fives"]}<=10 || ${diceRoll["sixes"]}<=10 ))
do
diceNum=$((RANDOM%6+1))
echo number is: $diceNum	
	if (( $((diceNum))==1 ))
	then
		diceRoll["ones"]=$((${diceRoll["ones"]}+1))
		if (( $((${diceRoll["ones"]}))==10 ))
		then
			echo one win
			break
		fi
	elif (( $((diceNum))==2 ))
    then
        diceRoll["twos"]=$((${diceRoll["twos"]}+1))
		if (( $((${diceRoll["twos"]}))==10 ))
		then
            echo two win
			break
		fi
	elif (( $((diceNum))==3 ))
    then
        diceRoll["threes"]=$((${diceRoll["threes"]}+1))
		if (( $((${diceRoll["threes"]}))==10 ))
		then
            echo three win
			break
		fi
	elif (( $((diceNum))==4 ))
    then
        diceRoll["fours"]=$((${diceRoll["fours"]}+1))
		if (( $((${diceRoll["fours"]}))==10 ))
		then
            echo four win
			break
		fi
	elif (( $((diceNum))==5 ))
    then
        diceRoll["fives"]=$((${diceRoll["fives"]}+1))
		if (( $((${diceRoll["fives"]}))==10 ))
		then
            echo five win
			break
		fi
	elif (( $((diceNum))==6 ))
    then
        diceRoll["sixes"]=$((${diceRoll["sixes"]}+1))
		if (( $((${diceRoll["sixes"]}))==10 ))
		then
            echo six win
			break
		fi
	else
		continue
	fi
done

for val in ${!diceRoll[*]}
do
	echo $val - ${diceRoll[$val]}
done


