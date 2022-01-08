
echo "UNIT CONVERSION: "
echo "1ft = 12 in then 42 in = ? ft"
echo 42 inches = $((42/12)) feet
echo "Rectangular Plot of 60 feet x 40 feet in meters"
lengthInMeters=$((60*3/10))
breadthInMeters=$((40*3/10))
echo "60 feet =" $lengthInMeters " meters"
echo "40 feet =" $breadthInMeters " meters"
Area=$(($lengthInMeters*breadthInMeters))
areaOf25Plots=$((25*Area))
echo "Area of 25 such plots in acres:" $((areaOf25Plots/4047)) acres
