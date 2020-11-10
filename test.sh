!/bin/sh
for i in 1 2 3 4 5 
do
  echo "Test case $i : Passed"
  sleep 2s
done
n=60
if [ $n >= 70 ]
then
	echo "Continue"
	exit 0
else
	echo "Cannot continue"
	exit 1
fi
