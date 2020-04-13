#!/bin/bash -x

echo "Enter the Pincode"
read Pincode
PinCodePattern="^[1-9]{1}[0-9]{2}[ ]?[0-9]{3}$"

# check for pincode validation
function validation()
{
   if [[ $1 =~ $2  ]]
   then
      echo "Valid"
   else
      echo "Invalid"
   fi
}

validation $Pincode $PinCodePattern

