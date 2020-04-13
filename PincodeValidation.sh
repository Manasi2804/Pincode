#!/bin/bash -x

echo "Enter the Pincode"
read Pincode
PinCodePattern="^[0-9]{6}$"

# check for pincode validation
function validation()
{
   if [[ $1 =~ $2  ]]
   then
      echo " Valid"
   else
      echo " Invalid"
   fi
}

validation $Pincode $PinCodePattern

