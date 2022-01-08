i=1
sum=0
N=5

echo "Enter 5 Numbers"

while [ $i -le $N ]
do
  read num
  sum=$((sum + num))
  i=$((i + 1))
done

avg=$(( $sum / $N ))

echo "Sum: " $sum
echo "Average: " $avg
