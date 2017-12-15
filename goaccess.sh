#!/bin/sh
zcat -f /home/var/log/nginx/*.gz | goaccess -a -o /dev/null --keep-db-files
cat /home/var/log/nginx/*.log | goaccess -a -o /var/www/reports.html --load-from-disk

zcat -f /home/var/log/nginx/study-access.log*.gz | goaccess -a -o /dev/null --keep-db-files
goaccess -f /home/var/log/nginx/study-access.log -a -o /var/www/study-reports.html --load-from-disk
zcat -f /home/var/log/nginx/cma-access.log*.gz | goaccess -a -o /dev/null --keep-db-files
goaccess -f /home/var/log/nginx/cma-access.log -a -o /var/www/cma-reports.html --load-from-disk
zcat -f /home/var/log/nginx/cima-access.log*.gz | goaccess -a -o /dev/null --keep-db-files
goaccess -f /home/var/log/nginx/cima-access.log -a -o /var/www/cima-reports.html --load-from-disk
zcat -f /home/var/log/nginx/bit-access.log*.gz | goaccess -a -o /dev/null --keep-db-files
goaccess -f /home/var/log/nginx/bit-access.log -a -o /var/www/bit-reports.html --load-from-disk
zcat -f /home/var/log/nginx/vupk-access.log*.gz | goaccess -a -o /dev/null --keep-db-files
goaccess -f /home/var/log/nginx/vupk-access.log -a -o /var/www/vupk-reports.html --load-from-disk
zcat -f /home/var/log/nginx/studio-access.log*.gz | goaccess -a -o /dev/null --keep-db-files
goaccess -f /home/var/log/nginx/studio-access.log -a -o /var/www/studio-reports.html --load-from-disk
zcat -f /home/var/log/nginx/om-access.log*.gz | goaccess -a -o /dev/null --keep-db-files
goaccess -f /home/var/log/nginx/om-access.log -a -o /var/www/om-reports.html --load-from-disk
zcat -f /home/var/log/nginx/cb-access.log*.gz | goaccess -a -o /dev/null --keep-db-files
goaccess -f /home/var/log/nginx/cb-access.log -a -o /var/www/cb-reports.html --load-from-disk
zcat -f /home/var/log/nginx/video-access.log*.gz | goaccess -a -o /dev/null --keep-db-files
goaccess -f /home/var/log/nginx/video-access.log -a -o /var/www/video-reports.html --load-from-disk
zcat -f /home/var/log/nginx/vhec-access.log*.gz | goaccess -a -o /dev/null --keep-db-files
goaccess  -f /home/var/log/nginx/vhec-access.log -a -o /var/www/vhec-reports.html --load-from-disk


