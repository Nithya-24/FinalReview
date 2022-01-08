declare -A resultDict

read -p "Enter value for a :" a
read -p "Enter value for b :" b
read -p "Enter value for c :" c

result1=$(( $a + $b * $c ))
echo "Result1 a + b * c:" $result1

result2=$(( $a * $b + $c ))
echo "Result2 a * b + c:" $result2

result3=$(( $c + $a / $b ))
echo "Result3 c + a / b:" $result3

result4=$(( $a % $b + $c ))
echo "Result4 a % b + c:" $result4

resultDict[result1]=$result1
resultDict[result2]=$result2
resultDict[result3]=$result3
resultDict[result4]=$result4

for((i=0; i<${#resultDict[@]}; i++))
do
  resultArray[i]=${resultDict[result$((i+1))]}
done

echo "${resultArray[@]}"

function descOrder()
{
	for(( i=0; i<${#resultArray[@]}; i ++ ))
   	do
      		for(( j=0; j<${#resultArray[@]}-1; j ++ ))
      		do
         		if (( "${resultArray[j+1]}" > "${resultArray[j]}" ))
         		then
            			temp=${resultArray[j]}
            			resultArray[j]=${resultArray[j+1]}
            			resultArray[j+1]=$temp
         		fi
      		done
   	done
   	echo "Descending Order:" ${resultArray[@]}
}

descOrder ${resultArray[@]}

function ascOrder()
{
	for(( i=0; i<${#resultArray[@]}; i ++ ))
   	do
      		for(( j=0; j<${#resultArray[@]}-1; j ++ ))
      		do
         		if (( "${resultArray[j+1]}" < "${resultArray[j]}" ))
         		then
            			temp=${resultArray[j]}
            			resultArray[j]=${resultArray[j+1]}
            			resultArray[j+1]=$temp
         		fi
      		done
   	done
   	echo "Ascending Order:" ${resultArray[@]}
}

ascOrder ${resultArray[@]}