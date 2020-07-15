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
		echo "Invalid Input! Enter a name with minimum length 3 and first letter capital.";
	fi
done

isValid=0;
while [ $isValid -eq 0 ]
do
    read -p "Enter valid last name: " last_name;
    if [[ $last_name =~ ^[A-Z][A-Za-z]{2,}$ ]]
    then
        isValid=1;
    else
        echo "Invalid Input! Enter a name with minimum length 3 and first letter capital.";
    fi
done

isValid=0;
while [ $isValid -eq 0 ]
do
    read -p "Enter valid Email address: " email_id;
    if [[ $email_id =~ ^[a-zA-Z](\.?[a-zA-Z0-9_+-]+){1,2}@([a-zA-Z0-9_]+[+-]*\.){1,2}[a-zA-Z]{2,}[a-zA-Z0-9]*$ ]]
    then
        isValid=1;
    else
        echo "Invalid Input! Enter a email address of the form abc@xyz.com or abc.xyz@bl.co.in";
    fi
done
