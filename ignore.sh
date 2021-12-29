#!/bin/bash
listOfThing=""
i=0
for  a  in $@
do
	if [ $i -le 0 ]
	then
		listOfThing="$a"
	else
		listOfThing="$listOfThing,$a"
	fi
	i=1
done

curl -o .gitignore -s -S  -H "Accept: application/json" -X GET https://www.toptal.com/developers/gitignore/api/$listOfThing

