#!/bin/expect -f

set my_name {{ user_name }}
set my_pass {{ password }}

set timeout -1
spawn ipa-client-install --mkhomedir --ssh-trust-dns
expect "*Continue"
send -- "yes\r"
expect "*User"
send -- "$my_name\r"
expect "*Password"
send -- "$my_pass\r"
expect EOF