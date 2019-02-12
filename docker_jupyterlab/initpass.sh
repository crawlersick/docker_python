#!/usr/bin/expect
set timeout -1
spawn jupyter notebook password
expect "*password*"
send "ibn5100123456\r"
expect "*password*"
send "ibn5100123456\r"
expect eof
exit
