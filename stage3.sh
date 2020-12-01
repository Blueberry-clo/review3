#!/bin/bash
shopt -s extglob

random=$((RANDOM%4+1))
read -p "Enter the number from 1 to 4 : " num

function mobileNumber(){
	read -p "Enter your mobile number : " mobileNum
   patternForMobile="^[0-9]{10}$"
	if [[ $mobileNum =~ $patternForMobile ]]
	then
		echo "Your given mobile number is valid"
	else
		echo "Invalid number"
	fi
}

function zipCode(){
read -p "Enter your zip code : " zip
        patternForZipCode="^[0-9]{6}$"
        if [[ $zip =~ $patternForZipCode ]]
        then
                echo "Your given zip code is valid"
        else
                echo "Invalid zip code"
		  fi
}

function aadharNumber(){
read -p "Enter your AADHAR number : " aadharNum
   patternForAadhar="^[0-9]{4}[ ][0-9]{4}[ ][0-9]{4}$"
	patternForAadharOne="^[0-9]{12}$"
        if [[ $aadharNum =~ $patternForAadhar ]] || [[ $aadharNum =~ $patternForAadharOne ]]
        then
                echo "Your given AADHAR number is valid"
        else
                echo "Invalid AADHAR number"
		  fi
}

function userName(){
read -p "Enter your name : " name
        patternForName="^[[:upper:]]{1}[[:lower:]]{3,}$"
		  patternForNameOne="^[[:lower:]]{3,}$"
		  if [[ $name =~ $patternForName ]] || [[ $name =~  $patternForNameOne ]]
        then
                echo "Your given name is valid"
        else
                echo "Invalid String"
		  fi
}

case $num in
	"1")
	mobileNumber
	;;
	"2")
	zipCode
	;;
	"3")
	aadharNumber
	;;
	"4")
	userName
	;;
	*)
	echo "Invalid input"
esac
