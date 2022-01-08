HEAD=1
max=0

declare -A flipStore

function totalFlip(){
	for((i=0; i<$1; i++)){
		side=""
		for((j=0; j<$2; j++)){
			flipCoin=$((RANDOM%2))
			if [ $flipCoin -eq $HEAD ]
			then
				side+=H
			else
				side+=T
			fi
		}
		flipStore[$side]=$(( ${flipStore[$side]} + 1 ))
	}	
	echo "All combinations :${!flipStore[@]}"
	echo "Count of all combinations :${flipStore[@]}"
}

function winningPercentage(){
	for side in ${!flipStore[@]} 
	do
		flipStore[$side]=$(( ${flipStore[$side]}*100 )) 
		percentage=$((${flipStore[$side]} /$count))
		if (( $percentage >= $max ))
		then
			max=$percentage
			key=$side
		fi 
	done
	echo "Maximum winning Combination: " $max"% -" $key
}

read -p "Enter number of times you want to flip: " count
read -p "Enter choice 1)Singlet 2)Doublet 3)Triplet: " choice

totalFlip $count $choice
winningPercentage