#!/bin/bash
echo "renaming html files to tpl"
for x in $(ls -d */)
do 
	read -p "Now Entering $x : " answer


	cd $x

	for f in *.html; do
		echo "Moving $f to ${f%%.html}.tpl"
	    # mv $f "${f%%.html}.tpl"
	done

	for dir in $(ls -d */)
	do 
		../html2tpl.sh
	done

	cd ../
done