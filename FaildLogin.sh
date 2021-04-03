##
#       Find all failed login Attempts in web server
#
#       v1.1; April 2021
#       Copyrights:
#       Ohoud Alawad
#       GitHub:
#       https://github.com/OhoudAlawad
#       Twitter:
#       @ohoud_alawad
#
##
#!/bin/bash
grep "authentication failure" /var/log/auth.log | awk '{ print "   "$1" "$2"  "$14}' | sed s/rhost=// | sort | uniq -c
