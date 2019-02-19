#!/usr/bin/expect
set timeout -1
spawn jupyter notebook password
expect "*password*"
#send "xxxxxxx\r"
send [exec cat temppass]\r
expect "*password*"
#send "xxxxxxx\r"
send [exec cat temppass]\r
expect eof
exit
