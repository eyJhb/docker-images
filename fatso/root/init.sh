#!/bin/sh

# set timezone
cp /usr/share/zoneinfo/${TZ} /etc/localtime
echo ${TZ} > /etc/timezone

# print out our env variables
echo "UNHEALTHY_START = ${UNHEALTHY_START}"
echo "UNHEALTHY_STOP = ${UNHEALTHY_STOP}"

# echo to our crontab
printf "${UNHEALTHY_START} /bin/sh /be_unhealthy.sh\n" > /etc/crontabs/root
printf "${UNHEALTHY_STOP} /bin/sh /be_healthy.sh\n" >> /etc/crontabs/root

# start our crontab
/usr/sbin/crond -f -S -l 0 -c /etc/crontabs
