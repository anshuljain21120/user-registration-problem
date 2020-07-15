#! /bin/bash -x

echo "Welcome to the User Registration problem!";
echo "A user registration System needs to ensure all validations are in place during the User Entry";

isValid=0;
while [ $isValid -eq 0 ]
do
	read -p "Enter valid first name: " first_name;
	if [[ $first_name =~ ^[A-Z][A-Za-z]{2,}$ ]]
	then
		isValid=1;
	else
		echo "Invalid Input! Enter again.";
	fi
done
