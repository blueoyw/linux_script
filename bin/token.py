import sys

if len(sys.argv) != 3:
	print "Usage> python", sys.argv[0], "\"cdr\" \"delimeter\""
	print ""
	sys.exit(1)

cdr = sys.argv[1]
delim = sys.argv[2]

#print cdr
#print delim

print ""

items = cdr.split(delim)
i = 0
while (len(items) > i):
	j = i+1
	print "%4d : %s" % (j, items[i])
	i = j

print ""
