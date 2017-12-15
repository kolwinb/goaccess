#!/bin/sh

mdate=$(date +%b)
cyear=$(date +%Y)
lm=$(date +%b -d 'last month')
cm=$(date +%b -d 'now')
nm=$(date +%b -d 'next month')
#echo current month $mdate
#echo last month $lm
#echo next month $nm

zcat -f /home/var/log/nginx/study-access.log.*.gz | grep "/$lm/$cyear" | goaccess -a -o /dev/null --keep-db-files
grep "/$lm/$cyear" /home/var/log/nginx/study-access.log | goaccess -a -o /var/www/study-report-$cyear-$lm.html --load-from-disk
zcat -f /home/var/log/nginx/studio-access.log.*.gz | grep "/$lm/$cyear" | goaccess -a -o /dev/null --keep-db-files
grep "/$lm/$cyear" /home/var/log/nginx/studio-access.log | goaccess -a -o /var/www/studio-report-$cyear-$lm.html --load-from-disk
zcat -f /home/var/log/nginx/cima-access.log.*.gz | grep "/$lm/$cyear" | goaccess -a -o /dev/null --keep-db-files
grep "/$lm/$cyear" /home/var/log/nginx/cima-access.log | goaccess -a -o /var/www/cima-report-$cyear-$lm.html --load-from-disk
zcat -f /home/var/log/nginx/acca-access.log.*.gz | grep "/$lm/$cyear" | goaccess -a -o /dev/null --keep-db-files
grep "/$lm/$cyear" /home/var/log/nginx/acca-access.log | goaccess -a -o /var/www/acca-report-$cyear-$lm.html --load-from-disk
zcat -f /home/var/log/nginx/cma-access.log.*.gz | grep "/$lm/$cyear" | goaccess -a -o /dev/null --keep-db-files
grep "/$lm/$cyear" /home/var/log/nginx/cma-access.log | goaccess -a -o /var/www/cma-report-$cyear-$lm.html --load-from-disk
zcat -f /home/var/log/nginx/bitc-access.log.*.gz | grep "/$lm/$cyear" | goaccess -a -o /dev/null --keep-db-files
grep "/$lm/$cyear" /home/var/log/nginx/bitc-access.log | goaccess -a -o /var/www/bitc-report-$cyear-$lm.html --load-from-disk
zcat -f /home/var/log/nginx/bitm-access.log.*.gz | grep "/$lm/$cyear" | goaccess -a -o /dev/null --keep-db-files
grep "/$lm/$cyear" /home/var/log/nginx/bitm-access.log | goaccess -a -o /var/www/bitm-report-$cyear-$lm.html --load-from-disk
zcat -f /home/var/log/nginx/vupk-access.log.*.gz | grep "/$lm/$cyear" | goaccess -a -o /dev/null --keep-db-files
grep "/$lm/$cyear" /home/var/log/nginx/vupk-access.log | goaccess -a -o /var/www/vupk-report-$cyear-$lm.html --load-from-disk
zcat -f /home/var/log/nginx/vhec-access.log.*.gz | grep "/$lm/$cyear" | goaccess -a -o /dev/null --keep-db-files
grep "/$lm/$cyear" /home/var/log/nginx/vhec-access.log | goaccess -a -o /var/www/vhec-report-$cyear-$lm.html --load-from-disk
zcat -f /home/var/log/nginx/om-access.log.*.gz | grep "/$lm/$cyear" | goaccess -a -o /dev/null --keep-db-files
grep "/$lm/$cyear" /home/var/log/nginx/om-access.log | goaccess -a -o /var/www/om-report-$cyear-$lm.html --load-from-disk
zcat -f /home/var/log/nginx/cb-access.log.*.gz | grep "/$lm/$cyear" | goaccess -a -o /dev/null --keep-db-files
grep "/$lm/$cyear" /home/var/log/nginx/cb.access.log | goaccess -a -o /var/www/cb-report-$cyear-$lm.html --load-from-disk
