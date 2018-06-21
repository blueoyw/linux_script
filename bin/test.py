import sys

f = open("/home/hulee/temp/temp.dat", 'r')

i=sys.argv[1]
print i

sum=0;
while 1:
	line = f.readline()
	if not line: break;

	items = line.split(",");
	sum += int(items[int(i)])

	print line

print sum

f.close()
