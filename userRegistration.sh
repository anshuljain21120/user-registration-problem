#! /bin/bash -x

echo "Welcome to the User Registration problem!";
echo "A user registration System needs to ensure all validations are in place during the User Entry";

read_name() {
    name_pattern="^[A-Z][A-Za-z]{2,}$";
    if [[ $1 =~ $name_pattern ]]
    then
        echo "Valid Name";
    else
        echo "Invalid Input! Enter a name with minimum length 3 and first letter capital.";
        exit 0;
    fi
}
read_email() {
    email_pattern="^[a-zA-Z](\.?[a-zA-Z0-9_+-]+){1,2}@([a-zA-Z0-9_]+[+-]*\.){1,2}[a-zA-Z]{2,}[a-zA-Z0-9]*$";
    if [[ $1 =~ $email_pattern ]]
    then
        echo "Valid Email ID";
    else
        echo "Invalid Input! Enter a email address of the form abc@xyz.com or abc.xyz@bl.co.in";
        exit 0;
    fi
}
read_mobile_number() {
    mobile_pattern="^((\+?[0-9]{1,3}|[0-9]{1,4})\s[0-9]{10})$";
    if [[ $* =~ $mobile_pattern ]]
    then
            echo "Valid Number";
    else
            echo "Invalid Input! Enter a number of the form 91 0123456789";
            exit 0;
    fi
}
read_password() {
    password_pattern_rule1="^[a-zA-Z0-9]{8,}$";
    password_pattern_rule2="^([a-zA-Z0-9]*[A-Z]{1,}[a-zA-Z0-9]*)$";
    if [[ $* =~ $password_pattern_rule1 ]] && [[ $* =~ $password_pattern_rule2 ]]
    then
            echo "Valid password";
    else
            echo "Invalid Input! Enter minimum 8 characters";
            exit 0;
    fi
}
read -p "Enter valid first name: " first_name;
read_name $first_name

read -p "Enter valid last name: " last_name;
read_name $last_name

read -p "Enter valid Email address: " email_id;
read_email $email_id

read -p "Enter valid mobile phone number: " mobile_number;
read_mobile_number $mobile_number

read -p "Enter valid password: " password;
read_password $password