#!/bin/bash

# check the dg switch available or not
var=`which dg_switch` 
if [ $? -eg 0 ]
then 
var=`which dg_switch`; echo "dg+switch is available is following path $var"
else 
echo "dg_switch script not available please store the dg_switch script in proper path"
exit
fi

# check DataGaurd status
echo "If you want to check the DataGaurd status of DB of $1 if press Y it will continue" read input
if [ $input == "Y" ]
then
dg_switch $1 $2 check_status
fi

# check DataGaurd logs
echo "If you want to check the DataGaurd logs of DB of $1 if press Y it will continue" read input
if [ $input == "Y" ]
then
dg_switch $1 $2 check_lag
fi

# Validate DataGaurd DB
echo "If you want to Validate the DataGaurd  DB of $1 if press Y it will continue" read input
if [ $input == "Y" ]
then
dg_switch $1 $2 check_validate
fi

# Switchover to new Primary DB
echo "If you want to Switchover to new Primary DB if press Y it will continue" read input
if [ $input == "Y" ]
then
dg_switch $1 $2 check_validate
fi
