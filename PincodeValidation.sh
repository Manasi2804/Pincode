#!/bin/bash -x

echo "Enter the Pincode"
read Pincode
PinCodePattern="^[0-9]{6}$"

# check for pincode validation
function validation()
{
   if [[ $1 =~ $2  ]]
   then
      echo "$1 is Valid"
   else
      echo "$1 is Invalid"
   fi
}

validation $Pincode $PinCodePattern

