#!/usr/bin/expect
set timeout -1
spawn jupyter notebook password
expect "*password*"
send "xxxxxxx\r"
expect "*password*"
send "xxxxxxx\r"
expect eof
exit
