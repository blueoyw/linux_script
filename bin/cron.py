from crontab import CronTab 

cron = CronTab(tabfile='/var/spool/cron/hulee', user='hulee')

print "print1"
for line in cron.lines:
	print line

print "new"
cron.new(command='/foo/bar', comment='SomeID')

#print "print2"
#job = cron[0]
#print job


#print "remove"
#cron.remove( job )

print "print3"
for line in cron.lines:
	print line


#print "remove"
#cron.remove_all()

print "write"
cron.write()


print "print4"
for line in cron.lines:
	print line



