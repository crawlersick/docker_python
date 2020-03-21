#!/usr/bin/expect
set timeout -1
spawn flask fab create-admin
expect "*Username*"
send "john\r"
expect "*first*"
send "john\r"
expect "*last*"
send "yang\r"
expect "*Email*"
send "jyang@online.com\r"
expect "*Password*"
#send "xxxxxxx\r"
send [exec cat temppass]\r
expect "*confirmation*"
#send "xxxxxxx\r"
send [exec cat temppass]\r
expect eof
exit
