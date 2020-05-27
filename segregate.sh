#!/bin/bash
echo "segregating images..."
imageList="segregate_photos/*.jpg"

for name in $imageList
do
	year=${name:17:4}
	month=${name:22:1}
	mkdir -p segregated/$year/$month
	cp $name segregated/$year/$month
done
echo "image segregation done :)"
