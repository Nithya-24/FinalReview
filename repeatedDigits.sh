
index=0
for ((counter=10 ; counter < 100 ; counter++ ))
do
    if [ $((counter%10)) -eq   $(((counter/10)%10)) ]
    then
        repeatedDigitsArray[((index++))]=$counter
    fi

done

echo "Repeated numbers are: ${repeatedDigitsArray[@]} "
