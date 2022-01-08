echo  "Enter Name"
read name
echo "Entered Name:" $name

echo "enter 3 names"
read name1  name2 name3
echo "entered names : $name1, $name2, $name3"

read -p "Enter Username:" username
read -sp "Enter Password:" password
echo "username : $username"
echo "passwd : $password"

echo "Names read and stored in array "
read -a names
echo "Names: ${names[0]},${names[1]},${names[2]}"

echo
echo "without variable"
read
echo "$reply"