read -p "Enter number of elements: " n

for(( i=0; i<n; i++ ))
do
	read -p "Enter the number: " array[$i]
done

echo "Three Digits sum to zero in the array are: "

for (( i=0; i<$n-2; i++))
do 
	for (( j=i+1; j<$n-1 ; j++ ))
	do
		for (( k=j+1 ; k<$n ; k++ ))
		do
			if [ $(( array[$i]+array[$j]+array[$k] )) == 0 ]
			then
				echo -e "${array[i]} \c"
				echo -e "${array[j]} \c"	
				echo -e "${array[k]} \n"
			fi
		done
	done	
done