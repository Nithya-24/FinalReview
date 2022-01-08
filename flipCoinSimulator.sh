#CONSTANTS
TAIL=0
HEAD=1

declare -A resultDict
resultDict[headCount]=0
resultDict[tailCount]=0

function startSimulator(){
   for (( i=0;1==1;i++ ))
   do
		result=$(( (RANDOM%2) ))
		saveResult $result
		sleep 0.5s
		if [ ${resultDict[headCount]} -gt 20 -o ${resultDict[tailCount]} -gt 20 ] 
			then
			break
		fi  
   done
}

function saveResult(){
	if [ $1 == $HEAD ]
		then
			echo "Head won"
			resultDict[headCount]=$(( ${resultDict[headCount]} + 1 ))
		else
			echo "Tail won"
		resultDict[tailCount]=$(( ${resultDict[tailCount]} + 1 ))
    fi
}

function diffHeadTail(){
	if [ $1 -gt $2 ] 
	then
		echo "Head won by" $(( $1 - $2 )) "rounds."
		tieBreaker $1 $2
	else   
   		echo "Tail won by" $(( $2 - $1 )) "rounds."
		tieBreaker $2 $1
	fi	
}

function tieBreaker(){
	winningDifference=$(( $1 - $2 ))
	if [ $winningDifference == 1 -o $winningDifference == 0 ]
	then
		echo "Difference between Victory is " $winningDifference ", so Tie Breaker is triggered."
		initiateProgram
	fi
}

function initiateProgram(){
	startSimulator
	echo "Head won" ${resultDict[headCount]} "times"
	echo "Tail won" ${resultDict[tailCount]} "times"
	diffHeadTail ${resultDict[headCount]} ${resultDict[tailCount]}
}

initiateProgram