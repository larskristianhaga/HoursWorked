#!/bin/bash

echo "Calculate hours worked"
echo "Type in when you got to work: (HH:MM)"
# Reads gotToWorkTime from user
read gotToWorkTime

echo "Type in when you left work: (HH:MM)"
# Reads leftWorkTime time from user
read leftWorkTime

# Convert the times to seconds from the Epoch
gotToWorkTimeEpoch=`date +%s -d ${gotToWorkTime}`
leftWorkTimeEpoch=`date +%s -d ${leftWorkTime}`

# Using a expression to do the math, and calculate the difference between the times
timeDifference=`expr ${leftWorkTimeEpoch} - ${gotToWorkTimeEpoch}`

# And use date to convert the seconds back to something more meaningful
echo "You have worked for `date +%H:%M -ud @${timeDifference}` (HH:MM)"

# Sleeps 10 secounds so user has time to read the output, then closes terminal window
sleep 10s